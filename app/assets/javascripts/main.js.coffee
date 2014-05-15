@OglasnikZaTutore = angular.module("OglasnikZaTutore", ['ngResource', 'ngRoute'])

@OglasnikZaTutore.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    otherwise({
    	redirectTo: '/'
    }) 
])