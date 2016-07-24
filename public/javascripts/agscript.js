var app = angular.module("myApp",["ngRoute"]);
app.controller('myCtrl', function($scope, $http) {
	$scope.add = function() {
		var url = window.location.origin
	    $http({
	        method: 'POST',
	        url: url+'	/create',
	    	  data: $scope.vehicle
	    }).success(function(data) {
          if (data.errors) {
            $scope.errorVehicleType = data.errors.vehicle_type;
            $scope.errorModelCode = data.errors.model_code;
            $scope.errorModelName = data.errors.model_name;
            $scope.errorManufacturer = data.errors.manfacturer;
            $scope.errorWithBattery = data.errors.with_battery;
            $scope.errorWithTools = data.errors.with_tools;
            $scope.errorFuelCapacity = data.errors.fuel_capacity;
          } else {
            $scope.message = data.message;
          }
      });
	 };
});
