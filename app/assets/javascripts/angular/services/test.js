App.factory('Test', [ function(){
			return function(){
				return 'hello world!';
			};
		}]);

/*

Try

['$scope', Test, function($scope, Test)]

$scope.foo = Test();

*/