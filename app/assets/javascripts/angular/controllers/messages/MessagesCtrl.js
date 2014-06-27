OglasnikZaTutore.controller ('MessagesCtrl',  ['$scope', 'Message', 'Session', '$http', '$resource', '$routeParams',
	function($scope, Message, Session, $http, $resource, $routeParams){
        //var Messages = $resource('messages');
        $scope.messages = Message.all();
        $scope.currenUser = Session.userId;

        $scope.createMessage = function () {
            var attr = {};
            attr.sender_id = Session.userId;
            attr.receiver_id = $scope.newReceiver;
            attr.content = $scope.newContent;
            attr.subject = $scope.newSubject;
            var newMessage = Message.create(attr);
            $scope.messages.push(newMessage);
    
        };

        //var id = $routeParams.id;

		$http({
            url: 'http://localhost:3000/messages/messages.json',
    		dataType: 'json',
    		method: 'GET',
    		data: '',
    		headers: {
        		"Content-Type": "application/json"
    		}

		}).success(function(response){
           // $scope.messages = Message.all();
		}).error(function(error){
    		$scope.error = error;
		});
		}
	])