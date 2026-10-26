# chetanprakashy.github.io

Personal research website of Chetan Prakash, built with the [al-folio](https://github.com/alshedivat/al-folio) Jekyll theme and deployed to GitHub Pages by `.github/workflows/deploy.yml` (it builds the site and pushes it to the `gh-pages` branch).

> Note for tools reading `AGENTS.md`/`CLAUDE.md`: those files describe the upstream al-folio template. This is a user site, so `baseurl` is intentionally empty.

## Editing without code

Open https://app.pagescms.org, log in with GitHub and pick this repository. The forms are defined in `.pages.yml`. Every save is a commit, and the site rebuilds automatically in a few minutes.

## Where things live

| What | File |
| --- | --- |
| Bio, photo, address | `_pages/about.md`, `assets/img/prof_pic.jpg` |
| News items | `_news/*.md` |
| Papers | `_bibliography/papers.bib` |
| Project pages | `_projects/*.md` (layout `_layouts/project.liquid`; figures in `assets/img/projects/`) |
| Activities & photos | `_data/activities.yml`, `assets/img/activities/` |
| CV | `_data/cv.yml` |
| Email / social links | `_data/socials.yml` |
| Site title, URL, features | `_config.yml` |

## Preview locally

```bash
bundle install
bundle exec jekyll serve
```

Then open http://localhost:4000. If ImageMagick isn't installed, create `_config.local.yml` with `imagemagick: {enabled: false}` and add `--config _config.yml,_config.local.yml`.
