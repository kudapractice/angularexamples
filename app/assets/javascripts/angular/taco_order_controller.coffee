AngulaRails.controller "TacoOrderController", ($scope, $filter) ->
  $scope.tacos = []
  $scope.taco = {}
  $scope.fillings = [{id: 1, name: 'Chicken'}, {id: 2, name: 'Beef'}]
  $scope.extras = [{name: 'Sour Cream'}, {name: 'Guac'}, {name: 'Salsa'}]
  #$scope.fillings = ['Chicken', 'Beouf', 'Nyama']
  $scope.cheeses = ["No Cheese", "Normal Cheese", "Mucho Queso", "Monterrey Jack"]

  $scope.clear = () ->
    $scope.taco = {}
    for extra in $scope.extras
      extra.checked = false

  $scope.getExtras = () ->
    extras = []
    for extra in $scope.extras
      if extra.checked == true
        extras.push(extra.name)
    extras

  $scope.addTaco = () ->
    $scope.taco.extras = $scope.getExtras()
    $scope.tacos.push($scope.taco)

    $scope.clear()
