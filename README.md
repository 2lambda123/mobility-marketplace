# Mobility Marketplace

[`camobilitymarketplace.org`](https://camobilitymarketplace.org/)

A one-stop resource for modern, equitable and accessible public transit products and services.

Deployed via [Netlify][netlify] [![Netlify Status](https://api.netlify.com/api/v1/badges/0fcfad48-7c0e-43f4-bb85-f7447f7f5fa6/deploy-status)](https://app.netlify.com/sites/cal-itp-transit-stop/deploys)

## Development

### Cloning the repository

You can run the usual `git clone` command to check out this project, but notice that this repo contains [Git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules). To ensure you have all the files in those submodules, you can pass `--recuse-submodules` when cloning:
```
git clone --recurse-submodules https://github.com/cal-itp/mobility-marketplace.git
```
or if you've already cloned the project, you can run:
```
git submodule update --init
```
### Running a local instance

This is a [Jekyll][jekyll] static site. We include a [Docker Compose][docker-compose] file to help with local testing
and development.

To run the site locally with `jekyll`:

```bash
bundle install
jekyll serve --force_polling --livereload
```

To run the site locally with `docker-compose`:

```bash
docker-compose up [-d] site
```

The site is running at <http://localhost:4000>. Auto rebuild/reload will be active and will watch the site files for changes. The optional `-d` flag will run the Jekyll container as a background process, freeing up your Terminal.

[docker-compose]: https://docs.docker.com/compose/
[jekyll]: https://jekyllrb.com

## Building for Production

While [Netlify][netlify] is responsible for the production site builds, you may want to replicate this process locally for development and testing.

We include a `docker-compose` command that runs the official [Netlify build image][netlify-build] against the local repository contents, with our production build script(s).

```bash
docker-compose run netlify
```

## License

Content (including graphics, images, video, documents, and text) in this repository is licensed under [CC-BY 4.0][content-license].

The source code in this repository used to format and display the content is licensed under [GPL-3.0][code-license].

[docker-compose]: https://docs.docker.com/compose/
[jekyll]: https://jekyllrb.com
[code-license]: ./LICENSE
[content-license]: ./content/LICENSE
[netlify]: https://www.netlify.com/
[netlify-build]: https://github.com/netlify/build-image
