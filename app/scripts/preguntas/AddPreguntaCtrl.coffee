angular.module('WissenSystem')

.controller('AddPreguntaCtrl', ['$scope', '$http', 'Restangular', '$state', '$cookies', '$rootScope', '$mdToast', 'toastr'
	($scope, $http, Restangular, $state, $cookies, $rootScope, $mdToast, toastr) ->

		$scope.creando = false

		$scope.addNewPregunta = ()->

			$scope.creando = true

			Restangular.one('preguntas/store').customPOST({categoria_id: $scope.categoria}).then((r)->
				r.editando = true
				$scope.creando = false
				$scope.pg_preguntas.push r
				console.log 'Pregunta añadida: ', $scope.pg_preguntas

			(r2)->
				console.log 'Rechazada la nueva ', r2
				$scope.creando = false
				toastr.warning 'No se creó pregunta', 'Problema'
			)



		$scope.addNewPreguntaGrupo = ()->

			$scope.creando = true

			Restangular.one('grupo_preguntas/store').customPOST({categoria_id: $scope.categoria}).then((r)->
				r.editando = true
				$scope.creando = false
				$scope.pg_preguntas.push r
				console.log 'Pregunta añadida: ', $scope.pg_preguntas

			(r2)->
				console.log 'Rechazada la nueva ', r2
				$scope.creando = false
				toastr.warning 'No se creó el grupo pregunta', 'Problema'
			)



			



	]
)