OglasnikZaTutore.factory('Message', ['$resource', function($resource) {
  function Message() {
    this.service = $resource('/messages');
  };
  Message.prototype.all = function() {
    return this.service.query();
  };
  return new Message;
}]);