---
title: Thank you, Travis CI!
date: 2015-07-03
tags: software
---
After looking at how [yeoman.io](http://yeoman.io) generates their website using [Travis CI](https://travis-ci.org), I thought I'd give it a try myself. After spending a couple of hours figuring out how all of this stuff works (and making a lot of mistakes[^travis-mistakes] in the process), I am pleased to say that this blog is now built by Travis! :D

<!--more-->The process itself is actually quite cool. Travis [runs a build](https://travis-ci.org/polybuildr/blog) (basically whatever it is asked to do in `.travis.yml`) every time I push something to the `master` branch of [polybuildr/blog](https://github.com/polybuildr/blog).

In the build process, I ask Travis to do this:
```bash
#!/bin/bash
set -ev
HASH=$(git rev-parse --short HEAD)
git clone --branch=gh-pages https://github.com/polybuildr/blog.git blog
petroglyph --regenerate
cd blog
if [ -n "$(git status --porcelain)" ]; then
    git config user.name "Travis CI"
    git config user.email travis@travis-ci.org
    git add .
    git commit -m "Built blog from commit $HASH"
    git push --force --quiet https://${GH_TOKEN}@github.com/polybuildr/blog.git > /dev/null 2>&1
else
    echo "No changes to push."
fi
```

If I see other people using petroglyph for their own blogs, I'll publish a guide to using Travis for deploying a petroglyph blog to GitHub pages, but for now, I don't think that will be of any particular benefit.

For now, I can enjoy the sweet pleasure of simply adding a markdown file to the `posts/` directory of `polybuildr/petroglyph:master` and letting Travis take care of all the hard CI work. :')

[^travis-mistakes]: These mistakes ranged from letting my GitHub auth token show up in the build log of Travis CI to realising that if two posts are published on the same day (using the `date` field in the YAML front matter), then there's [a bit of non-determinism](https://github.com/polybuildr/petroglyph/issues/11) (no, seriously. non-determinism) in the order that the posts show up on the blog's front page.
