(function() {

	'use strict';

	angular
		.module('authApp')
		.controller('UserCtrl', UserCtrl);


	function UserCtrl($auth,$state,$scope,$http) {
   


          var token= $auth.getToken('user');
       
          if(token !=null)
          {
             $state.go('dashboard.addUser');

          }else
          {

          	$state.go('auth');

          }

          $scope.addUser=function()
          {
         
          

             var url='index.php/api/addUser';

               $http({
            method: 'POST',
            url: url,
            data: $.param($scope.user),
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        }).success(function(response) {
             
              console.log(response);

                    }).error(function(response) {
            console.log(response);
            alert('This is embarassing. An error has occured. Please check the log for details');
        });

          }

	}

})();