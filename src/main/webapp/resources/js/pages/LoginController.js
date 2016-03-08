
function LoginController($scope, $http, $location, $rootScope, $window) {
    $scope.customerVo = {};
    $scope.customerVo.email = '';
    $scope.customerVo.password = '';

    $scope.checkOutLogin = function(customerVo) {
        $scope.resetError();

        $http.post('accountLogin/authenticate', customerVo).success(function(login) {

            if(login.sessionId===null) {
                $scope.setError(login.status);
                return;
            }

            $scope.customerVo.email = '';
            $scope.customerVo.password = '';

            $rootScope.SessionId=login.sessionId;

            //$location.path("main");

            $window.location=login.pageToForward;

        }).error(function() {
            $scope.setError('Invalid user/password combination');
        });
    }

    $scope.accountLogin = function(customerVo) {
            $scope.resetError();

            $http.post('accountLogin/authenticate', customerVo).success(function(login) {

                if(login.sessionId===null) {
                    $scope.setError(login.status);
                    return;
                }

                $scope.customerVo.email = '';
                $scope.customerVo.password = '';

                $rootScope.SessionId=login.sessionId;

                //$location.path("main");
                $window.location=login.pageToForward;

            }).error(function() {
                $scope.setError('Invalid user/password combination');
            });
    }



    $scope.resetError = function() {
        $scope.error = false;
        $scope.errorMessage = '';
    }

    $scope.setError = function(message) {
        $scope.error = true;
        $scope.errorMessage = message;
        $rootScope.SessionId='';
    }
};