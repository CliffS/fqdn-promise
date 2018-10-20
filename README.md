# fqdn.promise

## Get the fully qualified domain name via a Promise

This module is inspired by [node-fqdn](https://www.npmjs.com/package/node-fqdn)
but returns a promise rather than using the 
[dasync](https://www.npmjs.com/package/deasync) library.

## Install

```
npm install fqdn-promise
```

## Usage

```javascript

fqdn = require('fqdn-promise');

// then from inside an async function
myfullhostname = await fqdn();

// or

fqdn()
.then (myfullhostname) => ...

```


## Issues

Please report any issues or make any suggestions at the
[https://github.com/CliffS/fqdn-promise/issues](Github issues) page.
