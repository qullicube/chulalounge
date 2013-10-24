App.controller('PageCourseIndex', ['$scope', '$http', function($scope, $http){

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
		if(array.length > 0) {
			var sum = 0;
			for(var i = 0; i < array.length; i++){
				sum += array[i][name];
			}
			return sum/array.length;
		} else {
			return 'NaN';
		}
	}

	var readjustTeach = function(tArray) {
		//format
		var f = {
			year: 2013,
			professors: []
		}

		f = [];

		angular.forEach(tArray, function(value, key) {
			f.push({year: parseInt(key), professors:value});
		});

		return f;

	}
	var topComments = function(array) {
		if(array.length > 2) {
			var index1 = 0;
			var index2 = 1;

			for(var i =2;i<array.length;i++){
				
				if(array[index1].likes == array[i].likes){
					index1 = (array[index1].dislikes < array[i].dislikes) ? index1 : i
				}
				else if(array[index2].likes == array[i].likes){
					index1 = (array[index2].dislikes < array[i].dislikes) ? index1 : i
				}
				else if(array[index1].likes < array[i].likes ||
				   array[index2].likes < array[i].likes){
					
					if(array[index1].likes < array[i].likes && array[index2].likes > array[i].likes)
						index1 = i;
					else
						index2 = i;
				} 
			}

			return [array[index1], array[index2]];
		}
		else {
			return array;
		}
	}

	$scope.init = function(id) {
		
	$http({method:'GET', url: '/courses/' + id}).
		  success(function(data) {
		  		$scope.course = data;
				$scope.comments = $scope.course.comments;
				$scope.top_comments = topComments($scope.course.comments);
				$scope.teaches = readjustTeach($scope.course.teaches);
				$scope.rating = {
					know_rating : average($scope.course.ratings,'know_rating'),
					diff_rating : average($scope.course.ratings,'diff_rating'),
					grade_rating : average($scope.course.ratings,'grade_rating')
				}
			});
	}

}]);