OglasnikZaTutore.factory('Message', ['$resource', function($resource) {
  function Message() {
    this.service = $resource('/messages/:message_id', {message_id: '@id'});
  };
  Message.prototype.all = function() {
    return this.service.query();
  };
  Message.prototype.create = function(attr) {
return this.service.save(attr)  
}
  return new Message;
}]);