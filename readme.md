
js-ko-shell [![LICENSE](https://img.shields.io/github/license/tsu-complete/js-ko-shell.svg)](https://github.com/tsu-complete/js-ko-shell/blob/master/LICENSE)
===
[![Dependencies](https://david-dm.org/tsu-complete/js-ko-shell.svg)](https://david-dm.org/tsu-complete/js-ko-shell)
[![Dev Dependencies](https://david-dm.org/tsu-complete/js-ko-shell/dev-status.svg)](https://david-dm.org/tsu-complete/js-ko-shell#info=devDependencies)

> template engine for knockout

Install
---

```sh
$ npm i --save tsu-complete/js-ko-shell

# --or--

$ bower i --save tsu-complete/js-ko-shell
```

Usage
---

```coffee
require "ko-shell"

ko.root.push
  name: "content-template"
  data: model
  as: "content"
```

