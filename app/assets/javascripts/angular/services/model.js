App.factory('Model', ['$resource'], function($resource) {
			return function(model) {
				var db = model.toLowerCase();
				return $resource('/'+db+'s'); //Return resource according to Model given
			};
		});