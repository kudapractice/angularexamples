AngulaRails.controller "GitHttpController", ($scope, $http) ->

  $scope.search = () ->
    $scope.repos = []
    $scope.searching = true
    $scope.errorMessage = ""
    $scope.repo_size = 0

    url = "https://api.github.com/users/#{$scope.username}/repos"
    $http({ method: "GET", url: url })

      .success (data) ->
        $scope.searching = false
        $scope.repos = data
        $scope.repo_size = data.length

      .error (data, status) ->
        if status == 404
          $scope.searching = false
          $scope.errorMessage = "User not found"


      # $.ajax
      #   type: "GET"
      #   url: url
      #   success: (data) ->
      #     $scope.searching = false
      #     $scope.repos = data
      #     $scope.$apply()
      #   error: (error) ->
      #     $scope.searching = false
      #     if error.status == 404
      #       $scope.errorMessage = "User not found"
      #     $scope.$apply()
