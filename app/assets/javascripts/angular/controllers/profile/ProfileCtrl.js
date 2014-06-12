OglasnikZaTutore.controller ('ProfileCtrl',  ['$scope', '$http', '$routeParams', '$location', 'User', 'Session', 
	function($scope, $http, $routeParams, $location, User, Session){
        $scope.currentUser = Session.userId
        var id = $routeParams.id;
        $scope.get_profile = function () {
            User.get_user(id)              
            .then(
                function (data) {
                    $scope.user_profile = data.data;

                });
        };
        $scope.get_profile();
        $scope.updateUser = function (userID) {
            User.update($scope.user_profile)
        };
        $scope.sameUser=false;
        if(id==$scope.currentUser)
            sameUser = true;
		}
	]);