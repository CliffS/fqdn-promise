os  = require 'os'
dns = require 'dns'

FQDN = =>
  new Promise (resolve, reject) =>
    hostname = os.hostname()
    dns.lookup hostname, hints: dns.ADDRCONFIG, (err, ip) =>
      return reject err if err
      dns.lookupService ip, 0, (err, fqdn) =>
        return reject err if err
        resolve fqdn

module.exports = FQDN

