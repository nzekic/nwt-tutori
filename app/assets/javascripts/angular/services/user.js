app.factory('User', ['$resource', function($resource) {
	    return $resource('/ngdemo/web/users/:id', {}, {
	        update: { method: 'PUT', params: {id: '@id'} }
	    })

}]);