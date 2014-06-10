OglasnikZaTutore.controller ('MessagesCtrl',  ['$scope', 'Message', '$http', '$resource', '$routeParams',
	function($scope, Message, $http, $resource, $routeParams){
        //var Messages = $resource('messages');
        $scope.messages = Message.all();
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
            $scope.messages = Message.all();
		}).error(function(error){
    		$scope.error = error;
		});
		}
	])