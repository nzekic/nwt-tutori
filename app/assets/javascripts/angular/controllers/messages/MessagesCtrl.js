OglasnikZaTutore.controller ('MessagesCtrl',  ['$scope', '$http', '$resource', '$routeParams',
	function($scope, $http, $resource, $routeParams){
        var id = $routeParams.id
        //$scope.sameUser=false;
		$http({
            url: 'http://localhost:3000/messages/messages.json',
    		dataType: 'json',
    		method: 'GET',
    		data: '',
    		headers: {
        		"Content-Type": "application/json"
    		}

		}).success(function(response){
            $scope.messages = response;
		}).error(function(error){
    		$scope.error = error;
		});
		}
	])