var OglasnikZaTutore = angular.module("OglasnikZaTutore", ['ngResource', 'ngRoute'])

OglasnikZaTutore.config( ['$routeProvider',
    function($routeProvider) {
        $routeProvider
            .when('/home', {templateUrl: 'templates/home.html'})
            .when('/', {templateUrl: 'templates/index.html'})
            .when('/login', {templateUrl: 'templates/login.html'});

    }
]);