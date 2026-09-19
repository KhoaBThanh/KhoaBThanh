# Build, preview, and publish the site.
#
# Docker is used so that no Ruby is needed on the host.
#   make build    build once into _site/
#   make serve    preview at http://localhost:4000/buithanhkhoa-site/
#   make deploy   publish the built site to the gh-pages branch
#   make clean    remove the build output and caches
#   make shell    a shell inside the Jekyll container

IMAGE := jekyll/jekyll:4.2.2
RUN   := docker run --rm -v "$(PWD):/srv/jekyll" -w /srv/jekyll $(IMAGE)

.PHONY: build serve deploy clean shell

build:
	$(RUN) jekyll build

serve:
	docker run --rm -it -p 4000:4000 -v "$(PWD):/srv/jekyll" -w /srv/jekyll $(IMAGE) jekyll serve --host 0.0.0.0 --livereload

deploy:
	bash scripts/deploy-gh-pages.sh

clean:
	rm -rf _site .jekyll-cache .jekyll-metadata

shell:
	docker run --rm -it -v "$(PWD):/srv/jekyll" -w /srv/jekyll $(IMAGE) bash
