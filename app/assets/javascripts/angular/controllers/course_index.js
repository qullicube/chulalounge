App.controller('PageCourseIndex', ['$scope', 'Resource', function($scope, Resource){

	$scope.course = Resource('/courses').query();
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

}]);