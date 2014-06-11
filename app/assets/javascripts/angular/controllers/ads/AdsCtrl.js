OglasnikZaTutore.controller ('AdsCtrl',  ['$scope', 'Ad', '$http', '$resource', '$routeParams',
	function($scope, Ad, $http, $resource, $routeParams){
        //var Messages = $resource('messages');
        $scope.ads = Ad.all();

        $scope.createAd = function () {
            var attr = {};
            attr.tutor_id = 1;
            attr.subject_id = 1;
            attr.title = $scope.newTitle;
            attr.description = $scope.newDescription;
            attr.hourly_rate= $scope.newHourlyRate;
            attr.expired = 0;
            var newAd = Ad.create(attr);
            $scope.ads.push(newAd);
    
        };

        //var id = $routeParams.id;

		$http({
            url: 'http://localhost:3000/ads/ads.json',
    		dataType: 'json',
    		method: 'GET',
    		data: '',
    		headers: {
        		"Content-Type": "application/json"
    		}

		}).success(function(response){
           // $scope.messages = Message.all();
		}).error(function(error){
    		$scope.error = error;
		});
		}
	])