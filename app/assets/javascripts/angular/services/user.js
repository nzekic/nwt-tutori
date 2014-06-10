OglasnikZaTutore.factory('User', ['$resource', function($resource) {
	    return $resource('/users/:id', {}, {
	        update: { method: 'PUT', params: {id: '@id'} }
	    })

}]);