(function() {

	'use strict';

	angular
		.module('authApp')
		.controller('UserController', UserController);

	function UserController($scope,$http,$auth,$rootScope) {

		var vm = this;

		vm.users;
		vm.error;

		$scope.getUsers = function() {

			// This request will hit the index method in the AuthenticateController
			// on the Laravel side and will return the list of users
			$http.get('index.php/api/authenticate').success(function(users) {
				
				//alert(users); 
				vm.users = users;
		        
			}).error(function(error) {
				vm.error = error;
			});
		}
		$scope.logout = function() {
          
       
             
            $auth.logout().then(function() {

                // Remove the authenticated user from local storage
                localStorage.removeItem('user');

                // Flip authenticated to false so that we no longer
                // show UI elements dependant on the user being logged in
                $rootScope.authenticated = false;

                // Remove the current user info from rootscope
                $rootScope.currentUser = null;
            });
        }

	}
	
})();