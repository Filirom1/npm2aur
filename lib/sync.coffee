fs                    = require 'fs'
_                     = require 'underscore'
npm                   = require 'npm'
{npm2arch, createPkg} = require 'npm2arch'
aur                   = require 'aur'

module.exports = (config, cb) ->
  cb or= (err)->
    console.error err.message
    process.exit -1

  # find packages to be synchronized
  npm.load loglevel:'silent', (err)->
    return cb err  if err
    config.packages.forEach (o)->
      npmName = Object.keys(o)[0]
      category = o[npmName]
      npm.commands.view [npmName], true, (err, data) ->
        return cb err, npmName if err
        npmVersion = Object.keys(data)[0]
        aur.info "nodejs-#{npmName}", (err, data)->
          return sync npmName, category, null, npmVersion, config, cb if err and err.message is 'No results found'
          return cb err if err # otherwise handle the error
          aurVersion = data.Version.split('-')[0]
          return sync npmName, category, aurVersion, npmVersion, config, cb if npmVersion != aurVersion
          cb null, npmName, aurVersion, npmVersion

sync = (npmName, category, aurVersion, npmVersion, config, cb) ->
  if config['dry-run']
    aur.login config.user, config.password, (err, data) ->
      return cb err, npmName if err
      npm.commands.view [npmName], true, (err, data) ->
        return cb err, npmName if err
        return cb null, npmName, aurVersion, npmVersion, data
  else
    createPkg npmName, ['--source'], verbose: false, (err, pkgFile) ->
      return cb err if err
      aur.publish config.user, config.password, pkgFile, category, (err, data) ->
        return cb err, npmName if err
        fs.unlink pkgFile, (err)->
          return cb err, npmName if err
          return cb null, npmName, aurVersion, npmVersion, data
