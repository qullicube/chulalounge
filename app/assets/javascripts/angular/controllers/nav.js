App.controller('PageNav', ['$scope','Course','Faculty', function($scope, Course, Faculty){
			
			//Scrollbar
			setTimeout(function() {
				$("#year").niceScroll({
					cursorfixedheight: 50,
					cursorwidth:3,
					cursorpacitymax: 0.5
				});
				$("#course").niceScroll({
					cursorfixedheight: 50,
					cursorwidth:3,
					cursorpacitymax: 0.5
				});
			});

			//Searchbar
			var initSearchBar = function(){
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
			}

			//Which column is currently selected?
			$scope.selectedColumn = function(i) {
				if(i == 3){
					return $scope.curriculumSelected != null;
				} else if(i==2){
					return $scope.yearSelected == null && $scope.curriculumSelected != null;
				} else {
					return $scope.curriculumSelected == null && $scope.yearSelected == null;
				}
			}

			$scope.resize = function(height) {
				//var height = $("#main").height() + $("#search-tool").height()-1;
				console.log($("#main").height());
				$('#year').height(height);
				$('#course').height(height);
			}


			$scope.curriculumClick = function(c) {
				if($scope.curriculumSelected == c){
					$scope.curriculumSelected = null;
					$scope.yearSelected = null;
				}
				else
					$scope.curriculumSelected = c;
			}


			$scope.yearClick = function(c) {
				if($scope.yearSelected == c)
					$scope.yearSelected = null;
				else
					$scope.yearSelected = c;
			}

			$scope.fetchData = function(id) {
				course
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
			
			initSearchBar();
			$scope.$watch(mainHeight, function(newValue, oldValue){
				if(newValue != oldValue) $scope.resize(newValue);
			});
			
		}]);