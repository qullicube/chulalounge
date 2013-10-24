App.controller('PageIndex', ['$scope','Course','Comment', function($scope, Course, Comment){
	$scope.catalogs = [
		{name: "ISE"},
		{name: "BBA"},
		{name: "EBA"},
		{name: "JIPP"},
		{name: "BALAC"},
		{name: "OTHERS"},
		{name: "JIPP"},
		{name: "BALAC"},
		{name: "OTHERS"}
	];

	Course.query().then(function(courses) {
		$scope.course = courses;
	});

}]);