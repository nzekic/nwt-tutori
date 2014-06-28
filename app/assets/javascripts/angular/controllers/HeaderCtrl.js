  OglasnikZaTutore.controller('HeaderCtrl', ['$scope', 'AuthService', 'Session', '$cookieStore', function ($scope, AuthService, Session, $cookieStore) {
    $scope.currentUser = $cookieStore.get('currentUser');
    $scope.AuthService = AuthService;
	$scope.loggedIn = $cookieStore.get('loggedin');
	if ($scope.loggedIn == 'true') {
		$scope.loggedOut = '';
	}
	else {
		$scope.loggedOut = 'true';
	}
    $scope.$watch('AuthService.isAuthenticated()', function(newVal) {
        $scope.isAuthenticated = newVal;
    });

  }])