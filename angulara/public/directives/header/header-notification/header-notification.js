'use strict';

/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('authApp')
	.directive('headerNotification',function(){
		return {
        templateUrl:'public/admin_pages/header-notification.html',
        restrict: 'E',
        replace: true,
    	}
	});


