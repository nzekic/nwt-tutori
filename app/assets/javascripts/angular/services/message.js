OglasnikZaTutore.factory('Message', ['$resource', function($resource) {
  function Message() {
    this.service = $resource('/messages/:message_id', {message_id: '@id'});
  };
  Message.prototype.all = function() {
    return this.service.query();
  };
  return new Message;
}]);