(function() {
  'use strict';

  angular.module('app')
    .controller('SpacesController', SpacesController);
    
    SpacesController.$inject = ['$http'];

    function SpacesController ($http) {    
      var vm = this;
      vm.sortField = '';
      vm.name = '';

      vm.sortBy = function(name) {
        vm.sortField = name;
      };
        
        $http.get('/api/spaces')
        .then(function(res){
          vm.spaces = res.data;
         
        });

        vm.newSpace = function() {

          $http.post('/api/spaces', {name:vm.name, address:vm.address, city:vm.city, state:vm.state, zipcode:vm.zipcode, website:vm.website, email:vm.email})
            .then(function(res){
              console.log(res);
            });
        };

        vm.delSpace = function(space) {
          console.log(space);
          $http.delete('/api/spaces/' + space.id)
            .then(function(res){
            console.log("yay dead");
          });
        };



    }



})();