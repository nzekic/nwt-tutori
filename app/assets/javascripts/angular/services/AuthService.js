OglasnikZaTutore.factory('AuthService', ['$http', 'Session', '$location','$cookieStore',
  function ($http, Session, $location, $cookieStore) { 
  return {
    login: function (credentials) {
      return $http
        .post('/sessions', credentials)
        .then(function (res) {
          Session.create(res.data.session_id, res.data.user_id, res.data.privilege_id, res.data.username);
          $cookieStore.put('loggedin', 'true')

        });
    },
    logout: function(){
      Session.destroy();
      $cookieStore.put('loggedin', '');
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