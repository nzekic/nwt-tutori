OglasnikZaTutore.controller ('ProfileCtrl',  ['$scope', '$http', '$routeParams', '$location', 'User', 'Session', '$cookieStore',
	function($scope, $http, $routeParams, $location, User, Session, $cookieStore){
        $scope.currentUser = $cookieStore.get('currentUser').userId;
        var id = $routeParams.id;
        $scope.user_profile = {};
        $scope.user_profile.id = $routeParams.id;
        var get_profile = function(user_id){
            User.get_user(user_id)
                .success(
                    function(data){
                            $scope.user_profile = data;
                    }
                )
                .error(
                    function(data, status){
                        console.log("error_proba");
                    }
                );
        };
        get_profile($scope.user_profile.id);
        $scope.updateUser = function (userID) {
            
            User.update_user($scope.user_profile)
        };
        $scope.sameUser=false;
        if(id==$scope.currentUser)
            $scope.sameUser = true;

		}

	]);