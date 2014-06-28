angular
  .module('app')
  .factory('Movie', function($resource) {
    var Movie = $resource('/api/v1/movies/:id.json', {id: '@id'}, {
      update: {
        method: 'PUT'
      }
    });
    return Movie;
  });