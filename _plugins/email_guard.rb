# frozen_string_literal: true

# Closes the gaps left by al_email_protect when `protect_email: true`.
# That plugin only rewrites links passed through its filter, so three places still
# published the address: the navbar email icon (plain mailto: link), the ctrl-K
# search entry (percent-encoded mailto: in JavaScript) and the CV contact card
# (plain text). This hook runs on every rendered HTML page and
#   1. rewrites any remaining <a href="mailto:..."> into al_email_protect's markup (the address
#      is split into two data attributes and rejoined by the browser on click). Done here rather
#      than with AlEmailProtect.rewrite_html, which pastes the link's other attributes into its
#      class="" value and so produces broken HTML (e.g. class="al-email-protect title="Email"").
#   2. turns a "mailto:..." string literal in inline JavaScript into one assembled at runtime
#      from its two halves;
#   3. replaces any remaining plain-text copy of the site's own address (socials / CV) with "user [at] domain [dot] tld".
# The built HTML then contains no user@host string and no mailto: target.
require "cgi"

module EmailGuard
  JS_MAILTO = /(["'])mailto:([^"']+)\1/.freeze

  module_function

  # Only the site's own addresses (socials and CV; the CV field may list several), so strings like "logo@2x.png" are never touched.
  def addresses(site)
    data = site.data
    fields = [data.dig("socials", "email"), data.dig("cv", "cv", "email")].compact.map(&:to_s)
    fields.flat_map { |field| field.scan(/[^\s,;·<>"']+@[^\s,;·<>"']+\.[A-Za-z]{2,}/) }.uniq   # a field may hold several addresses
  end

  def rewrite_links(html)
    html.gsub(AlEmailProtect::ANCHOR) do
      attrs = "#{Regexp.last_match(1)} #{Regexp.last_match(4)}"
      label = Regexp.last_match(5)
      parts = AlEmailProtect.split_address(AlEmailProtect.decode_target(Regexp.last_match(3)))
      next Regexp.last_match(0) unless parts

      local, domain = parts
      klass = attrs[/\bclass=(["'])(.*?)\1/, 2]
      attrs = attrs.sub(/\bclass=(["'])(.*?)\1/, "").gsub(/\s+/, " ").strip
      inner = if label.to_s.include?("@")
                "#{AlEmailProtect.escape(local)}<span class=\"al-email-sep\"> [at] </span>#{AlEmailProtect.domain_markup(domain)}"
              else
                label
              end
      %(<a href="#" class="#{["al-email-protect", klass].compact.join(" ")}" #{attrs} data-eu="#{AlEmailProtect.escape(local)}" data-ed="#{AlEmailProtect.escape(domain)}">#{inner}</a>).sub(/" +data-eu/, '" data-eu')
    end
  end

  def guard(html, addresses)
    html = rewrite_links(html)
    html = html.gsub(JS_MAILTO) do
      parts = AlEmailProtect.split_address(CGI.unescape(Regexp.last_match(2).split("?").first.to_s))
      next Regexp.last_match(0) unless parts

      %{("mailto:" + #{parts[0].to_json} + "@" + #{parts[1].to_json})}
    end
    addresses.reduce(html) { |out, address| out.gsub(address) { AlEmailProtect.obfuscate_text(address) } }
  end
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  next unless defined?(AlEmailProtect) && AlEmailProtect.enabled?(doc.site)
  next unless doc.output_ext == ".html" && doc.output

  doc.output = EmailGuard.guard(doc.output, EmailGuard.addresses(doc.site))
end
