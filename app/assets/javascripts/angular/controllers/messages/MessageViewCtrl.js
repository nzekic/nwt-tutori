OglasnikZaTutore.controller ('MessageViewCtrl',  ['$scope', 'Message', '$routeParams', '$http',
	function($scope, Message, $routeParams, $http){
        var id = $routeParams.id
   $scope.newSubject = "TEST";
   $scope.newSubject = Message.getOne(id).subject;

            $scope.createMessage = function () {
            var attr = {};
            attr.sender_id = 1;
            attr.receiver_id = $scope.newReceiver;
            attr.content = $scope.newContent;
            attr.subject = $scope.newSubject;
            var newMessage = Message.create(attr);
            $scope.messages.push(newMessage);
    
        };

		$http({
    		url: 'http://localhost:3000/messages/' + id + '/view_message.json',
    		dataType: 'json',
    		method: 'GET',
    		data: '',
    		headers: {
        		"Content-Type": "application/json"
    		}

		}).success(function(response){
            $scope.message = response;
           

		}).error(function(error){
    		$scope.error = error;
		});
		}
	])