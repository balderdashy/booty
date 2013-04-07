# booty

Dead-sexy URL caching for Connect/Express.

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

// /config/routes.js

var cache = require('booty-cache')

module.exports.routes = {
 
    // This route is now cached for 3600 seconds!
    '/foo/bar': cache(60*60)({
      controller: 'foo',
      action: 'bar'
    })
};

// You can also use booty in your controllers directly
```

![icon_circlelightbulb@2x.png](http://i.imgur.com/eOFXn.png)  


The MIT License (MIT)
--

Copyright © 2013 Brad Carleton and Balderdash Co.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/8acf2fc2ca0aca8a3018e355ad776ed7 "githalytics.com")](http://githalytics.com/balderdashy/sails)

