OglasnikZaTutore.controller ('AdViewCtrl',  ['$scope', 'Ad', '$routeParams', '$http',
	function($scope, Ad, $routeParams, $http){
        var id = $routeParams.id


		$http({
    		url: 'http://localhost:3000/ads/' + id + '/view_ad.json',
    		dataType: 'json',
    		method: 'GET',
    		data: '',
    		headers: {
        		"Content-Type": "application/json"
    		}

		}).success(function(response){
            $scope.ad = response;
           

		}).error(function(error){
    		$scope.error = error;
		});
		}
	])