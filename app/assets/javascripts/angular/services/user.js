OglasnikZaTutore.factory('User', ['$http', 'Session', function($http, Session) {
	    return {
	    	update_user:
	    	    function(user){
                    var config = {
                        'method': 'PUT',
                        'url': '/users/'+user.id+'.json',
                        data: {
                            location: user.location,
                            name: user.first_name,
                            family_name: user.last_name,
                            email: user.email,
                            username: user.username
                        }
                    };
                    return $http(config);
                },

	        get_user: 
	        function(id){
	        	var config = { 
	        		'url': '/users/'+id+'.json',
	        		'method': 'GET', 
	          		params: {id: '@id'}
	        	 };
	         	return $http(config);
	    	},

	    }

}]);
OglasnikZaTutore.factory('Users', ['$resource', function($resource) {
	    return $resource('/signups', {}, {
	        create: { method: 'POST' }
	    })
}]);