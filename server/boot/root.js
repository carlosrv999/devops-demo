'use strict';

module.exports = function(server) {
  var router = server.loopback.Router();
  router.get('/', server.loopback.status());
  router.get('/new', server.loopback.status());
  server.use(router);
};
