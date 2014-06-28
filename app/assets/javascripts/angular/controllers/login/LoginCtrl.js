OglasnikZaTutore.controller('LoginCtrl', ['$scope', '$rootScope', 'AUTH_EVENTS', 'AuthService', '$location', 'Session', 
  function ($scope, $rootScope, AUTH_EVENTS, AuthService, $location, Session) {
  $scope.credentials = {
    username: '',
    password: ''
  };
  $scope.login = function (credentials) {
    AuthService.login(credentials).then(function () {
      $rootScope.$broadcast(AUTH_EVENTS.loginSuccess);
      $rootScope.username = Session.username;
      $rootScope.userId = Session.userId;
      if(Session.userRole==1||Session.userRole==2||Session.userRole==3){
        $location.path("/home");
      }


    }, function () {
      $rootScope.$broadcast(AUTH_EVENTS.loginFailed);
      $location.path("/login")
    });
  };
}
]);