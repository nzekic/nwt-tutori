OglasnikZaTutore.controller ('LoginCtrl',  ['$scope', '$http', '$routeParams', '$location', 'User',
        var id = $routeParams.id;
        $scope.sameUser=false;

		$http({
            url: 'http://localhost:3000/profiles/' + id + '/user_profile.json',
    		dataType: 'json',
    		method: 'GET',
    		data: '',
    		headers: {
        		"Content-Type": "application/json"
    		}

		}).success(function(response){
    		$scope.user_profile = response;

            if ($scope.user_profile.id == $scope.user_profile.current_user.id){
                $scope.sameUser = true;
            }
		}).error(function(error){
    		$scope.error = error;
		});
		}
	]);