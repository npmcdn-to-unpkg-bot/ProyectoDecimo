'use strict'

angular.module('WissenSystem')

.controller('ApplicationController', ['$scope', 'USER_ROLES', 'AuthService', 'toastr', '$state', '$rootScope', ($scope, USER_ROLES, AuthService, toastr, $state, $rootScope)->

	$scope.USER= {}

	$scope.toastr = toastr

	$scope.verificar_acceso = AuthService.verificar_acceso
	$scope.isAuthorized = AuthService.isAuthorized
	$scope.hasRoleOrPerm = AuthService.hasRoleOrPerm

	$scope.USER_ROLES = USER_ROLES

	$scope.isLoginPage = false

])