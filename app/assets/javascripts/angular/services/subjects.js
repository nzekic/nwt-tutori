OglasnikZaTutore.factory('Subjects', ['$http', function($http){

	return {
		get_all_subjects:
		function(){
			var config = {
				'method': 'GET',
				'url': '/subjects.json',
				'isArray': 'true'
			};
			return $http(config);
		}
	}
}]);