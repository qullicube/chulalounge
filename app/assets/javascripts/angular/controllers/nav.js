App.controller('PageNav', ['$scope','$resource','Course', function($scope, $resource, Course){
			
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
					return $scope.curriculumSelected != null && $scope.yearSelected != null;
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
				else if($scope.curriculumSelected != c && $scope.curriculumSelected != null){
					$scope.yearSelected = null;
					$scope.curriculumSelected = c;
				}
				else {
					$scope.curriculumSelected = c;
				}
			}


			$scope.yearClick = function(c) {
				if($scope.yearSelected == c)
					$scope.yearSelected = null;
				else {

					$scope.courses = [];
					$scope.yearSelected = c;
					
					for(var i=0;i<$scope.curriculumSelected.courses.length;i++){
						if($scope.curriculumSelected.courses[i].academic_year == c.y &&
							$scope.curriculumSelected.courses[i].semester == c.s){
							console.log('hi');
							$scope.courses.push($scope.curriculumSelected.courses[i]);
						}
					}
				}
			}

			$scope.fetchData = function(id) {
				$scope.faculty = $resource('/faculties/:facId').query({facId: id},function() {
					$scope.curriculums = $scope.faculty[0].curriculums;
				});
				$scope.years = [
					{y:1,s:1},
					{y:1,s:2},
					{y:2,s:1},
					{y:2,s:2},
					{y:3,s:1},
					{y:3,s:2},
					{y:4,s:1},
					{y:4,s:2}
				];

				$scope.courses = [];
			}

			$scope.curriculumSelected = null;
			$scope.yearSelected = null;

			$scope.fetchData($scope.id);

			initSearchBar();

			var mainHeight = function(){return $('#main').height(); }
			
			$scope.$watch(mainHeight, function(newValue, oldValue){
				if(newValue != oldValue) $scope.resize(newValue);
			});
			
		}]);