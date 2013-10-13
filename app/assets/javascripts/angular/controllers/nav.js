App.controller('nav', ['$scope','Test', function($scope, Test){
			$scope.heading = Test();
		}]);