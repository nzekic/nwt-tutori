OglasnikZaTutore.factory('User', ['$resource', function($resource) {
	    return $resource('/users/:id', {}, {
	        update: { method: 'PUT', params: {id: '@id'} }
	    })

}]);
OglasnikZaTutore.factory('Users', ['$resource', function($resource) {
	    return $resource('/signups', {}, {
	        create: { method: 'POST' }
	    })
}]);