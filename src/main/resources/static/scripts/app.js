angular.module('aplikasiSpringboot', ['ngRoute'])
        .config(function ($routeProvider){
            $routeProvider
            .when('/home',{
                templateUrl: 'views/home.html',
                controller: 'homeController'
            })
            .when('/admin', {
                        templateUrl: 'views/admin.html',
                        controller: 'homeController'
            })
                    .when('/', {
                        templateUrl: 'views/home.html',
                        controller: 'homeController'
            })
                 .when('/storeshoes', {
                        templateUrl: 'views/storeshoes.html',
                        controller: 'storeshoesController'
            });
            });
        