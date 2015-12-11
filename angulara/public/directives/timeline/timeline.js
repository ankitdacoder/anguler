'use strict';

/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('authApp')
	.directive('timeline',function() {
    return {
        templateUrl:'public/directives/timeline/timeline.html',
        restrict: 'E',
        replace: true,
    }
  });
