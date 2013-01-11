
# booty

Like a pirate's treasure booty, not the dirty kind of booty.  

## What it does

Dynamically cache routes in express!

```js
npm install "git://github.com/balderdashy/booty.git"
```

## How to use

```
cacheRoute = require('booty')
 
app.get('/', cacheRoute(60*60), function(req, res) {
    res.send('This route is now cached for 3600 seconds!')
})
```
