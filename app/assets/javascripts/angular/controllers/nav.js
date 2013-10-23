App.controller('PageNav', ['$scope','Course', function($scope, Course){
			
			//SEARCH TOGGLING

		   	var focus_duration = 800;
		   	var wait_duration = 2000;

			$("#search-tool .footer").click(function() {
				if(!$("#search-course").is(":focus")){
					$("#search-course").focus();
				}
			});

			$("#search-course").focus(function(){
				$("#search-tool").clearQueue().switchClass("span4", "span12", focus_duration);
			});

			$("#search-course").blur(function(){
				setTimeout(function(){
					if(!$("#search-course").is(":focus")){
					$("#search-tool").clearQueue().switchClass("span12", "span4", focus_duration);
				}},wait_duration);
			});


			Course.query().then(function(courses) {
				$scope.course = courses;
			});


			$scope.resize = function(height) {
				//var height = $("#main").height() + $("#search-tool").height()-1;
				console.log($("#main").height());
				$('#year').height(height);
				$('#course').height(height);
			}


			$scope.curriculumClick = function(c) {
				if($scope.curriculumSelected == c)
					$scope.curriculumSelected = null;
				else
					$scope.curriculumSelected = c;
			}


			$scope.yearClick = function(c) {
				if($scope.yearSelected == c)
					$scope.yearSelected = null;
				else
					$scope.yearSelected = c;
			}


			$scope.curriculumSelected = null;
			$scope.yearSelected = null;

			$scope.curriculums = [
				{title:'ICE', subtitle: 'Information and Communication'},
				{title:'Others', subtitle: 'General Education'}
			];
			$scope.years = [1,2,3,4];
			$scope.courses = [
				{name: 'User Interface Design', number: 3140082}
			];

			var mainHeight = function(){return $('#main').height(); }
			
			$scope.$watch(mainHeight, function(newValue, oldValue){
				if(newValue != oldValue) $scope.resize(newValue);
			});
			
		}]);