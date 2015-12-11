(function() {

	'use strict';

	angular
		.module('authApp')
		.controller('AuthController', AuthController);


	function AuthController($auth, $state,$scope) {


     
     var token= $auth.getToken('user');
       
          if(token !=null)
          {
             $state.go('dashboard.home');

          }else
          {

          	$state.go('auth');

          }
 


		var vm = this;
        $scope.error='';
		vm.login = function(e) {

              

			var credentials = {
				email: vm.email,
				password: vm.password
			}

			// Use Satellizer's $auth service to login
               
               console.log($auth);

			$auth.login(credentials).then(function(data) {

				// If login is successful, redirect to the users state
				$state.go('dashboard.home');
			}, function(error) {
				console.log(error.data.error);
				$scope.error= error.data.error;
		        

			});
		}

	
	}

})();