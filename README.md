# Bui Thanh Khoa: personal site

A static personal site for Bui Thanh Khoa, lecturer in the Faculty of Commerce
and Tourism at the Industrial University of Ho Chi Minh City and CEO of
Innoteq Co., Ltd.

Built with [Jekyll](https://jekyllrb.com). Plain CSS, no JavaScript, no
plugins, no external requests. Fonts are served from the site itself.

## Design

Quiet and text first: a single column of about 40em, black text on white, one
accent colour on link hover, hairline rules. The layout and interaction follow
the reference site [hi.imnhan.com](https://hi.imnhan.com):

- one column, `max-width: 40em`, reader font size respected
- links in ink; gold highlight on hover
- external links marked with an arrow
- a small right aligned footer

Type: IBM Plex Serif for headings, IBM Plex Sans for text, IBM Plex Mono for
dates, numbers, and metadata. IBM Plex is licensed under the SIL Open Font
License 1.1.

## Build

With Docker (no Ruby needed on the host):

    make build      # writes _site/
    make serve      # preview at http://localhost:4000/buithanhkhoa-site/
    make deploy     # publish the built site to gh-pages on origin

With a local Ruby 3.x and Bundler:

    bundle install
    bundle exec jekyll build
    bundle exec jekyll serve

## Publishing to GitHub Pages

The project is ready for GitHub Pages, but it is not published. No
repository exists for it. To publish it on a GitHub account:

1. Create an empty repository for the site.
2. Edit `_config.yml` to match the account and the repository name:

   - project site: `url: "https://<account>.github.io"` and
     `baseurl: "/<repository>"`
   - custom domain: `url: "https://buithanhkhoa.com"` and `baseurl: ""`

3. Add the repository as the remote `origin` and push the source:

       git remote add origin https://github.com/<account>/<repository>.git
       git push -u origin main

4. Build and publish:

       make deploy

   `make deploy` builds the site, adds `.nojekyll`, and force-pushes the
   built output to the `gh-pages` branch. Nothing is built on the GitHub
   side, so the published site is exactly what was built and checked on
   this machine.

5. In the repository settings, under Pages, set the source to the
   `gh-pages` branch with the folder `/`.

### Custom domain

To serve the site at buithanhkhoa.com:

1. Set `url: "https://buithanhkhoa.com"` and `baseurl: ""` in
   `_config.yml`, then run `make deploy`.
2. Add a `CNAME` file with `buithanhkhoa.com` to the `gh-pages` branch,
   or set the domain in the repository settings under Pages.
3. Point the domain's DNS at GitHub Pages.

## Layout of the source

    _config.yml              site settings: title, URL, author
    index.md                 home page
    about.md                 biography, appointments, education
    research-group.md        Business and Management Research Group page
    publications.md          publications page; renders _data/publications.yml
    projects.md              project index
    teaching.md              courses and supervision
    blog.md                  post index
    contact.md               email, profiles, CV
    _data/publications.yml   the publication list: edit this to add a paper
    _data/research_group.yml group members and research topics
    _posts/                  blog posts, one file per post
    _projects/               project detail pages
    _layouts/                default, page, post
    _includes/               head, header, nav, footer
    assets/css/              fonts.css (font faces) and style.css (theme)
    assets/fonts/            IBM Plex woff2 files
    assets/images/           photographs
    assets/files/            the curriculum vitae PDF
    feed.xml, sitemap.xml     generated at build time

To add a publication, append a record to `_data/publications.yml`:

    - year: 2026
      authors: "Bui Thanh Khoa, A Co-author"
      title: "The title of the paper"
      venue: "Journal name 1 (1), 1-10"
      cites: 0

To add a post, create `_posts/YYYY-MM-DD-slug.md` with `layout: post` in the
front matter.

To add a project, create `_projects/slug.md` with `layout: project`, a `title`,
and a `role` in the front matter.

## Sources for the content

- The earlier WordPress site, buithanhkhoa.com (resume page, home page, and
  posts), read on 19 September 2026.
- Google Scholar profile `59YSVmEAAAAJ`: citation counts, h-index, i10-index,
  and the publication records.
- ResearchGate profile: recent 2026 articles and research interests.
- The curriculum vitae PDF dated 21 June 2021, copied to
  `assets/files/`.

Citation counts and metrics are a snapshot of 19 September 2026. Update
`_data/publications.yml` and the metrics text in `index.md` and
`publications.md` when they change.

## Notes

- The two posts in `_posts/` come from the WordPress site. The second post
  keeps a short extract of the song lyric and links to the recording, rather
  than reproducing the whole lyric.
- Set `url:` in `_config.yml` to the real domain before deployment, so that
  the feed, the sitemap, and the canonical links are correct.
