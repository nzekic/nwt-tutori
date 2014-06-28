OglasnikZaTutore.service('Session', ['$cookieStore', function ($cookieStore) {
  this.create = function (sessionId, userId, userRole, username) {
    this.id = sessionId;
    this.userId = userId;
    this.username = username;
    this.userRole = userRole;
    $cookieStore.put('currentUser', this);
  };
  this.destroy = function () {
    this.id = null;
    this.userId = null;
    this.userRole = null;
    this.username = null;
    $cookieStore.remove('currentUser', this);

  };
  return this;
}

]);