OglasnikZaTutore.controller ('AdsCtrl',  ['$scope', '$cookieStore', 'Ad', 'Subjects','Session' ,'$http', '$resource', '$routeParams', '$cookieStore',
	function($scope, $cookieStore,  Ad, Subjects, Session, $http, $resource, $routeParams, $cookieStore){
        //var Messages = $resource('messages');
        $scope.ads = Ad.all();
        $scope.subjects = [];
//$scope.id = Session.userId;

        $scope.createAd = function () {
            var attr = {};
            attr.tutor_id = $cookieStore.get('currentUser').userId;
            attr.subject_id = 1;
            attr.title = $scope.newTitle;
            attr.description = $scope.newDescription;
            attr.hourly_rate= $scope.newHourlyRate;
            attr.expired = 0;
            var newAd = Ad.create(attr);
            $scope.ads.push(newAd);
    
        };

        //var get_subjects = function(){
          //  Subjects.get_all_subjects().success(function(data){$scope.subjects = data;});
        //};
        //get_subjects();
        //var id = $routeParams.id;
		}
	])