App.factory('Course', ['$resource', function($resource){
  return $resource('/courses');
}]);

App.factory('Professor', ['$resource', function($resource){
  return $resource('/professors');
}]);

App.factory('Teach', ['$resource', function($resource){
  return $resource('/teaches');
}]); 

App.factory('Faculty', ['$resource', function($resource){
  return $resource('/faculties');
}]); 

App.factory('Curriculum', ['$resource', function($resource){
  return $resource('/curriculums');
}]); 
