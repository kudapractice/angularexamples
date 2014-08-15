AngulaRails.controller "BooksController", ($scope, $http) ->

  $scope.getBooks = () ->
    $http({method: 'GET', url: $scope.urls.books })
      .success (response) ->
        $scope.books = response.books
