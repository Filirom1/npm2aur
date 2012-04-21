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
    {'mongodb-rest': 'devel'},
    {'requirejs': 'devel'},
    {'uglify-js': 'devel'},
    {'vows': 'devel'},
    {'stylus': 'devel'},
    {'browserify': 'devel'},
    {'connect-docco': 'devel'},
    {'forever': 'devel'},
    {'markdown': 'devel'},
    {'http-proxy': 'devel'},
    {'buster': 'devel'},
    #{'mocha': 'devel'},
#    {'node.io': 'devel'},
    {'log.io': 'devel'},
    {'jade': 'devel'},
    {'calipso': 'devel'},
    {'less': 'devel'},
    {'jasmine-dom': 'devel'},
    {'jasmine-node': 'devel'},
    {'jasmine-runner': 'devel'},
    {'qunit': 'devel'},
    {'nodeunit': 'devel'},
    {'grunt': 'devel'},
    {'node-inspector': 'devel'},
    {'google-image-search': 'devel'},
    {'brunch': 'devel'},
    {'universal-jst': 'devel'},
    {'stripcolorcodes': 'devel'},
    {'spaseo': 'devel'},
    #{'serve': 'devel'}
  ]
