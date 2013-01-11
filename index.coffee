module.exports = (duration) -> (req, res, next) ->
    if next?
        res.header 'Cache-Control', "max-age=#{duration}, must-revalidate"
        return next()
    callback = req
    return (req, res, next) ->
        res.header 'Cache-Control', "max-age=#{duration}, must-revalidate"
        callback req, res, next
         
