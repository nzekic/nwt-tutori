OglasnikZaTutore.factory('AuthService', ['$http', 'Session', '$location',
  function ($http, Session, $location) {
  return {
    login: function (credentials) {
      return $http
        .post('/sessions', credentials)
        .then(function (res) {
          Session.create(res.data.session_id, res.data.user_id, res.data.privilege_id);
        });
    },
    logout: function(){
      Session.destroy();
      $location.path("/login");
    },
    isAuthenticated: function () {
      return !!Session.userId;
    },
    isAuthorized: function (authorizedRoles) {
      if (!angular.isArray(authorizedRoles)) {
        authorizedRoles = [authorizedRoles];
      }
      return (this.isAuthenticated() &&
        authorizedRoles.indexOf(Session.userRole) !== -1);
    }
  };
}
]);