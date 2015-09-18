'use strict'

angular.module('WissenSystem')
	.config ['$stateProvider', 'App', 'USER_ROLES', 'PERMISSIONS', '$translateProvider', ($state, App, USER_ROLES, PERMISSIONS, $translateProvider) ->

		$state
			.state('examen_respuesta', { #- Estado admin.
				url: '/examen'
				views:
					'principal':
						templateUrl: "#{App.views}examen_respuesta/examenRespuesta.tpl.html"
						controller: 'ExamenRespuestaCtrl'
				resolve: { 
					resolved_user: ['AuthService', (AuthService)->
						AuthService.verificar()
					]
				}
				data: 
					pageTitle: 'Examen'
			})


		$translateProvider.preferredLanguage('ES');


		$translateProvider.translations('EN',
			INICIO_MENU: 'Home'
		)
		.translations('ES',
			INICIO_MENU: 'Inicio'

		)


		return
	]
