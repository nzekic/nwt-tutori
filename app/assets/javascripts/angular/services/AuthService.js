OglasnikZaTutore.factory('AuthService', ['$http', 'Session', 
  function ($http, Session) {
  return {
    login: function (credentials) {
      return $http
        .post('/sessions', credentials)
        .then(function (res) {
          Session.create(res.data.session_id, res.data.id, res.data.privilege_id);
        });
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