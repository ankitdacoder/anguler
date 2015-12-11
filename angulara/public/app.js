(function() {

	'use strict';

	angular
		.module('authApp', ['ui.router', 'satellizer','ui.bootstrap'])
		.config(function($stateProvider, $urlRouterProvider, $authProvider)

		 {
        

			// Satellizer configuration that specifies which API
			// route the JWT should be retrieved from
			$authProvider.loginUrl = 'angulara/index.php/api/authenticate';

			// Redirect to the auth state if any other states
			// are requested other than users
			$urlRouterProvider.otherwise('/auth');
			
			$stateProvider
				.state('auth', {
					url: '/auth',
					templateUrl: 'views/admin/login.html',
					controller: 'AuthController as auth'
				}).state('dashboard', {
        url:'/dashboard',
        templateUrl: 'views/admin/dashboard/main.html',
          controller: 'UserController'
    })
				.state('dashboard.home',{
        url:'/home',
        templateUrl:'views/admin/dashboard/home.html',
        controller: 'HomeCtrl'
      })
      .state('dashboard.form',{
        templateUrl:'views/admin/form.html',
        url:'/form'
    })
      .state('dashboard.blank',{
        templateUrl:'views/admin/pages/blank.html',
        url:'/blank'
    })
      .state('login',{
        templateUrl:'views/admin/pages/login.html',
        url:'/login'
    })
      .state('dashboard.addUser',{
        url:'/addUser', 
        templateUrl:'views/admin/addUser.html',
        controller:'UserCtrl'
       
    })
      .state('dashboard.table',{
        templateUrl:'views/admin/table.html',
        url:'/table'
    })
      .state('dashboard.panels-wells',{
          templateUrl:'views/admin/ui-elements/panels-wells.html',
          url:'/panels-wells'
      })
      .state('dashboard.buttons',{
        templateUrl:'views/admin/ui-elements/buttons.html',
        url:'/buttons'
    })
      .state('dashboard.notifications',{
        templateUrl:'views/admin/ui-elements/notifications.html',
        url:'/notifications'
    })
      .state('dashboard.typography',{
       templateUrl:'views/admin/ui-elements/typography.html',
       url:'/typography'
   })
      .state('dashboard.icons',{
       templateUrl:'views/admin/ui-elements/icons.html',
       url:'/icons'
   })
      .state('dashboard.grid',{
       templateUrl:'views/admin/ui-elements/grid.html',
       url:'/grid'
   })
		});
})();