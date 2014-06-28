angular
  .module('app')
  .controller('MovieCtrl', ['Movie', '$scope', '$routeParams', 
    function(Movie, $scope, $routeParams){
      $scope.movies = Movie.query();
  }]);