OglasnikZaTutore.controller ('AdsCtrl',  ['$scope', 'Ad', 'Subjects', '$http', '$resource', '$routeParams',
	function($scope, Ad, Subjects, $http, $resource, $routeParams){
        //var Messages = $resource('messages');
        $scope.ads = Ad.all();
        $scope.subjects = [];
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
        var get_subjects = function(){
            Subjects.get_all_subjects().success(function(data){$scope.subjects = data;});
        };
        get_subjects();
        //var id = $routeParams.id;
		}
	])