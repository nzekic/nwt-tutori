OglasnikZaTutore.controller ('RegistrationCtrl',  ['$scope', '$http', '$routeParams', '$location', 'Users',
	function($scope, $http, $routeParams, $location, Users){
       $scope.register = function () {
        console.log("aaa");
            Users.create($scope.userData);
            $location.path('/register');
        };

		}
	]);