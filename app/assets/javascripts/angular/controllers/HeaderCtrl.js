  OglasnikZaTutore.controller('HeaderCtrl', ['$scope', 'AuthService', function ($scope, AuthService) {
    
    $scope.AuthService = AuthService;

    $scope.$watch('AuthService.isAuthenticated()', function(newVal) {
        $scope.isAuthenticated = newVal;
    });

  }])