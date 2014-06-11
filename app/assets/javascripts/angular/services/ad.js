OglasnikZaTutore.factory('Ad', ['$resource', function($resource) {
  function Ad() {
    this.service = $resource('/ads/:ad_id', {ad_id: '@id'});
    
  };
  Ad.prototype.all = function() {
    return this.service.query();
  };
 
  Ad.prototype.create = function(attr) {
return this.service.save(attr)  
}
  return new Ad;
}]);