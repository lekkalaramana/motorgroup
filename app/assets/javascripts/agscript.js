var app = angular.module("myApp",["ngRoute"]);
app.controller('myCtrl', function($scope, $http) {
	$scope.add = function() {
		var url = window.location.origin
	    $http({
	        method: 'POST',
	        url: url+'	/create',
	    	data: $scope.motorstructure
	    });
	};
});
