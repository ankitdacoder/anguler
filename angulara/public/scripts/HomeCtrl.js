(function() {

	'use strict';

	angular
		.module('authApp')
		.controller('HomeCtrl', HomeCtrl);


	function HomeCtrl($auth, $state) {


     var token= $auth.getToken('user');
       
          if(token !=null)
          {
             $state.go('dashboard.home');

          }else
          {

          	$state.go('auth');

          }

	}

})();