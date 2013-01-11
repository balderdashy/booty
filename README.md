
# booty

Like a pirate's treasure booty, not the dirty kind of booty.  

Dynamically cache routes in express!

```js
npm install booty
```

## How to Use

```
cacheRoute = require('booty')
 
app.get('/', cacheRoute(60*60), function(req, res) {
    res.send('This route is now cached for 3600 seconds!')
})
```
