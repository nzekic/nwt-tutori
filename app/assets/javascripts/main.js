var OglasnikZaTutore = angular.module("OglasnikZaTutore", ['ngResource', 'ngRoute'])

OglasnikZaTutore.config( ['$routeProvider',
    function($routeProvider) {
        $routeProvider
            .when('/home', {templateUrl: 'templates/home.html'})
            .when('/', {templateUrl: 'templates/home.html'})
            .when('/subject/:id', {templateUrl: 'templates/subject-view.html'})
            .when('/my_profile', {templateUrl: 'templates/profile.html'})
            .when('/ads/search/ads_search', {templateUrl: 'templates/ads_search.html'});

    }
]);