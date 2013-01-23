# booty

> Like a pirate's booty, not the dirty kind of booty.  

## What it does

Dynamically cache routes in express!

```js
npm install booty-cache
```

## How to use with Express

```js
var cacheRoute = require('booty-cache')
 
app.get('/', cacheRoute(60*60), function(req, res) {
    res.send('This route is now cached for 3600 seconds!')
})
```

## How to use with Sails

```js
var cacheRoute = require('booty-cache')

var Controller = {
    route: cacheRoute(60*60)(function(req, res) {
        res.send('This route is now cached for 3600 seconds!')
    })
}
```
