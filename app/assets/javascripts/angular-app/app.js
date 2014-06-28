angular
  .module('app', ['ngRoute', 'ngResource'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/', {
      controller: 'HomeCtrl'
    }).when('/movies', {
      controller: 'MovieCtrl'
    }).otherwise({
      redirectTo: '/'
    });
  }]);