<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.3/angular.min.js"></script>
</head>
<body>
    <p><?=$registro->nombre?></p>
    <button>Modificar</button>
    <script>
        var url = "<?=env('APP_URL')?>";
        var app = angular.module("myApp",[]);
        app.controller("myController",function($scope,$http){
            
        });
    </script>
</body>
</html>