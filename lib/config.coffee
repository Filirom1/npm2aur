module.exports =
  homeConfig: "#{process.env.HOME}/.npm2aur"
  globalConfig: '/etc/npm2aur'
  user: null
  password: null
  packages: [
    # Insert the packages to sync here
    #
    # You can specify the category like this.
    # 'npm2arch': 'system'
    # 'express': 'devel'
    #
    # Or if you want the default category (system) use
    # 'npm2arch'
    {'npm2arch':'system'},
    {'aur':'system'},
    {'npm2aur':'system'},
    {'coffee-script':'devel'},
    {'jshint': 'devel'},
    {'jslint': 'devel'},
    {'serve': 'devel'},
    {'mongodb-rest': 'devel'},
    {'requirejs': 'devel'},
    {'UglifyJS': 'devel'},
    {'vows': 'devel'},
    {'stylus': 'devel'},
    {'less': 'devel'},
    {'node-browserify': 'devel'},
    {'docco': 'devel'},
    {'connect-docco': 'devel'},
    {'forever': 'devel'},
    {'markdown': 'devel'},
    {'node-http-proxy': 'devel'}
  ]
