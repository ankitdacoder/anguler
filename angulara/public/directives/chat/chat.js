'use strict';

/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('authApp')
	.directive('chat',function(){
		return {
        templateUrl:'public/directives/chat/chat.html',
        restrict: 'E',
        replace: true,
    	}
	});


