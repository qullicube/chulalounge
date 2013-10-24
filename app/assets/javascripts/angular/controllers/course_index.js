App.controller('PageCourseIndex', ['$scope', '$resource', function($scope, $resource){

	var focus_duration = 800;
	
	$("#review-post").bind('input propertychange', function() {
		if($("#review-post").val() != "" && !$("#review-post").hasClass('on')){
			$("#review-post").clearQueue().toggleClass('on', focus_duration);
		}
		else{
			$("#review-post").clearQueue().toggleClass('on', focus_duration);
		}
	});

	var average = function(array, name) {
		if(array.length != 0) {
			var sum = 0;
			for(var i = 0; i < array.length; i++){
				sum += array[i][name];
			}
			return sum/array.length;
		} else {
			return 'NaN';
		}
	}

	$scope.course = $resource('/courses/:courseId').query({courseId: $scope.id}, function() {
		$scope.comments = $scope.course.comments;
		
			for(int i=0; i<$scope.comments.length; i++ ){
				$resource('/comments/:commentId').query({commentId: $scope.comments[i].id}, function() {
					
				});
			}

		$scope.rating = {
			know_rating : average($scope.ratings,'know_rating'),
			diff_rating : average($scope.ratings,'diff_rating'),
			grade_rating : average($scope.ratings,'grade_rating')
		}

	});

	$scope.top_comments = [
		{
			author: 	"Jakkrapat Tangsongjaloen",
			comment: 	"I am the best in this subject.",
			like: 		42,
			dislike: 	2,
			timestamp:  "Aug 22, 2013"
		},
		{
			author: 	"Decha Tesapirat",
			comment:    "I did not want to take this course, but my friends forced me to. I don't want to take my extra time doing something that I hate. I just want to program my android application at home on free time T____T.",
			like:       12,
			dislike:    10,
			timestamp:  "Sept 10, 2013" 
		}
	];

	$scope.profs = [1,2,3,4,5];

}]);