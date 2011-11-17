Npm2AUR
=======

Synchronize a list of npm packages with ArchLinux AUR.

You can setup your user, password and packages in `~/.npm2aur` or in
`/etc/npm2aur`

    module.exports = {
      user: 'AUR-USERNAME',
      password: 'AUR-PASSWORD'
      packages: [
        # Insert the packages to sync here
        #
        # You can specify the category like this.
        # {'npm2arch': 'system'},
        # {'express': 'devel'}
        #
        # Or if you want the default category (system) use
        # 'npm2arch'
        {'npm2arch':'system'},
        {'aur':'system'},
        {'npm2aur':'system'},
        ...
      ]
    }

Or you can do it with comand line options :

    node bin/npm2aur --dry-run -u USER -p PASSWORD --pkg npm2arch:system,coffee-script


Cli usage:

    Usage: npm2aur [--packages name[:category],name2,name3]

    Options:
      -u, --user         [default: ""]
      -p, --password     [default: ""]
      --pkg, --packages  [default: ""]
      -n, --dry-run      [default: ""] //Do not publish for real

Default category is `system`.

Other categories are :

 * daemons
 * devel
 * editors
 * emulators
 * games
 * gnome
 * i18n
 * kde
 * lib
 * modules
 * multimedia
 * network
 * office
 * science
 * system
 * x11
 * xfce
 * kernels


License
-------

The MIT License (MIT)
Copyright (c) 2011 Filirom1

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
