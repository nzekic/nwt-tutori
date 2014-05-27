OglasnikZaTutore.controller ('HomeCtrl',  ['$scope', '$http',
	function($scope, $http){
		$http({
    		url: 'http://localhost:3000/home/ads.json',
    		dataType: 'json',
    		method: 'GET',
    		data: '',
    		headers: {
        		"Content-Type": "application/json"
    		}

		}).success(function(response){
    		$scope.ads = response;
		}).error(function(error){
    		$scope.error = error;
		});
		}
	])