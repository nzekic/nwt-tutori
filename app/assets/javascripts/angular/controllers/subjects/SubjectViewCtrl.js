OglasnikZaTutore.controller ('SubjectViewCtrl',  ['$scope', '$routeParams', '$http', 'Session', 
	function($scope, $routeParams, $http, Session){
        var id = $routeParams.id
		$http({
    		url: 'http://localhost:3000/subjects/' + id + '/subject_view.json',
    		dataType: 'json',
    		method: 'GET',
    		data: '',
    		headers: {
        		"Content-Type": "application/json"
    		}

		}).success(function(response){
            $scope.subject = response;
            $scope.tutors = $scope.subject.tutors;

		}).error(function(error){
    		$scope.error = error;
		});
		}
	])