App.controller('PageCourseRegister', ['$scope', 'Course', 'Professor','Teach', 
	function($scope, Course, Professor, Teach) {

	var today = new Date();
	$scope.years = [];
	
	for(var i = 0; i < 10;i++){
		$scope.years.push(today.getFullYear()-i);
	}

	$scope.editCourseMode = false;
	$scope.editDescMode = false;

	$scope.data = {
		course : {
			title: "New Title",
			number: 1111111,
			description : "New Description"
		},
		teaches : [] 
	};

	$scope.teach = {
		year: 2013,
		professors: []
	};

	$scope.course = {};
	$scope.description = "";

	$scope.profs = Professor.query();

	$scope.removeProf = function(obj) {
		var index = $scope.teach.professors.indexOf(obj);
		if(index != -1)
			$scope.teach.professors.splice(index,1);
	}

	$scope.addProf = function() {
		$scope.teach.professors.push({});
	}

	$scope.addTeach = function() {
		$scope.data.teaches.push($scope.teach);
		$scope.teach = {
			year: today.getFullYear(),
			professors: []
		};
	}
	$scope.removeTeach = function(obj){
		var index = $scope.data.teaches.indexOf(obj);
		if(index != -1)
		$scope.data.teaches.splice(index, 1);
	}
	$scope.editCourse = function(enter){
		$scope.course.title = $scope.data.course.title;
		$scope.course.number = $scope.data.course.number;
		$scope.editCourseMode = enter;
	}
	$scope.saveCourse = function() {
		$scope.data.course = $scope.course;
		$scope.editCourseMode = false;
	}

	$scope.editDesc = function(enter) {
		$scope.description = $scope.data.course.description;
		$scope.editDescMode = enter;
	}

	$scope.saveDesc = function() {
		$scope.data.course.description = $scope.description;
		$scope.editDescMode = false;
	}
	$scope.save = function() {
		var newCourse = new Course($scope.data);
		newCourse.$save();
	}
}]);