module.exports = (duration) -> (req, res, next) ->
    res.header 'Cache-Control', "max-age=#{duration}, must-revalidate"
    next()
