
_ = require 'underscore'

DEFAULT_DURATION = 60*60

module.exports = (duration) ->
    if _.isFunction duration
        return cacheFunction duration
    return (callback) ->
        return cacheFunction callback, duration

module.exports.setDefaultDuration = (duration) ->
    DEFAULT_DURATION = duration
    
cacheFunction = (callback, duration) ->
    duration ?= DEFAULT_DURATION
    (req, res, next) ->
        res.header 'Cache-Control', "max-age=#{duration}, must-revalidate"
        callback req, res, next
