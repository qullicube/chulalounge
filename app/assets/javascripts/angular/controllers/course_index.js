App.controller('PageCourseIndex', ['$scope', 'Course', function($scope, Course){

	var focus_duration = 800;
	
	$("#review-post").bind('input propertychange', function() {
		if($("#review-post").val() != "" && !$("#review-post").hasClass('on')){
			$("#review-post").clearQueue().toggleClass('on', focus_duration);
		}
		else{
			$("#review-post").clearQueue().toggleClass('on', focus_duration);
		}
	});

	$scope.courses = Course.query();
	$scope.top_reviews = [
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