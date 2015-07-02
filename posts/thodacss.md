---
title: ThodaCSS
tags: software
date: 2015-06-13
---
I've been writing CSS for over 3 years now. I used a lot of [Bootstrap](http://getbootstrap.com) when it was still at v2.3.2. I've also taken a look at other CSS frameworks, such as [Skeleton](http://getskeleton.com/) and [Pure](http://purecss.io/) and also looked at smaller projects, such as [Toast](http://daneden.github.io/Toast/), a CSS grid implementation. However, most of my projects involved significant customization - some projects didn't use a framework at all - so I ended up picking up a lot of CSS.

I've always thought that frameworks as complete as Bootstrap (sometimes referred to as _bloated_) were awesome. Need a navbar? Of course it's included. Need a sliding image carousel? Yep, we've got that too.

But I've always wondered. What if, instead of including everything that a project might need, you simply included some basics? How much code would you have to write? How would it compare to Bootstrap's [whopping 122.5 kB](https://github.com/twbs/bootstrap/blob/master/dist/css/bootstrap.min.css)?

<!--more-->I thought I'd give it a try. Ten days ago, I released [ThodaCSS v0.1.0](http://polybuildr.github.io/thodacss). ThodaCSS is a "lightweight, minimal CSS framework", hence the name _Thoda_ CSS. (The word _thoda_ in Hindi, means "a little" or "some".)

ThodaCSS doesn't include much. Some typography, buttons, a responsive grid, a navbar, tables, forms, a sidebar, a "hero unit" and some utility classes. Very minimal compared to other more _complete_ frameworks. That's why it weighs in at just 7.2 kB (9 kB if I include [`normalize.css`](http://necolas.github.io/normalize.css/), which I should). Just some basic features and a small footprint. I think it's a good deal.

If you're a front-end web developer, do try it out. If you find anything wrong with it, please [file an issue on GitHub](https://github.com/polybuildr/thodacss/issues). It's licensed under the MIT license, so contributions are, of course, very welcome!
