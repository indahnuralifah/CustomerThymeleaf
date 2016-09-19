angular.module('aplikasiSpringboot')
        .factory('homeService', function ($http){
            return {
                getStoreshoes: function () {
                    return $http.get("/storeshoes");
                },
                getListStoreshoes: function () {
                    return $http.get("/listStoreshoes");
                },
                getStoreshoesFromDb:function (){
                    return $http.get("/api/storeshoes");
                },
                save: function (data){
                    return $http.post("api/storeshoes",data);
                },
                delete: function(id){
                    return $http.delete("/api/storeshoes/"+id);
                },
                update: function (id,data){
                    return $http.put("/api/storeshoes/"+id,data);
                },
                getLoggedIn:function (){
                    return $http.get("api/user/loggedin");
                }
            };
        });