'use strict';

/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('authApp')
	.directive('notifications',function(){
		return {
        templateUrl:'public/directives/notifications/notifications.html',
        restrict: 'E',
        replace: true,
    	}
	});


