(function() {
  'use strict';

  angular.module('app')
    .controller('MapController', ['$http', function($http) {

      MapController.$inject = ['SpaceData'];

      function MapController(SpaceData) {
      
      var vm = this;
      
      vm.name = SpaceData.name;
      vm.address = SpaceData.address;

      vm.sortBy = function(name) {
        vm.sortField = name;
      };

    }


})();