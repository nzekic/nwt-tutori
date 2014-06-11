var OglasnikZaTutore = angular.module("OglasnikZaTutore", ['ngResource', 'ngRoute'])

OglasnikZaTutore.config( ['$routeProvider',
    function($routeProvider) {
        $routeProvider
            .when('/home', {templateUrl: 'templates/home.html'})
            .when('/', {templateUrl: 'templates/home.html'})
            .when('/subject/:id', {templateUrl: 'templates/subject-view.html'})
            .when('/user_profile/:id', {templateUrl: 'templates/profile.html'})
            .when('/edit_profile/:id', {templateUrl: 'templates/edit_profile.html'})
            .when('/messages', {templateUrl: 'templates/messages.html'})
            .when('/new_message', {templateUrl: 'templates/new_message.html'})
            .when('/messages/:id', {templateUrl: 'templates/view_message.html'})
            .when('/ads/search/ads_search', {templateUrl: 'templates/ads_search.html'});

    }
]);