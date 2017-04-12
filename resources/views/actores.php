<? echo view('header');?>
<div ng-app="myApp" ng-controller="myController">
    <h3>Lista de actores</h3>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
           <thead>
               <tr>
                   <th class="col-sm-1">Clave</th>
                   <th>Nombre</th>
               </tr>
           </thead>
            <? foreach($registros as $registro) {?>
                <tr ng-click="loadActor(<?=$registro->id?>)" data-toggle="modal" data-target="#myModal">
                    <td class="col-sm-1"><?=$registro->id?></td>
                    <td><?=$registro->nombre?></td>
                </tr>
            <? } ?>
        </table>
    </div>
    
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Actor</h4>
                </div>
                
                <div class="modal-body">
                    <form action="<?=env('APP_URL')?>" method="post" id="dialogActor" novalidate>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nombre</label>
                            <input type="text" class="form-control" id="nombreActor" name="nombreActor" placeholder="Nombre" value="{{actor.nombre}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">File input</label>
                            <input type="file" id="foto_actor" name="foto_actor">
                            <p class="help-block">Seleccione un archivo en formato PNG o JPG</p>
                        </div>
                    </form>
                </div>
                
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Guardar</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var app= angular.module("myApp",[]);
    app.controller("myController",function($scope,$http){
        $scope.actor={};
        $scope.foto=document.getElementById("foto_actor");
        $scope.loadActor=function(id){
            //$scope.foto.value="";
            console.log($scope.foto);
            return $http.get("<?=env('APP_URL')?>actor/"+id).then(function(response){
               $scope.actor=response.data;
                //console.log($scope.actor);
            });
        }
        
    });
</script>
<?=$registros->render()?>
<? echo view('footer')?>
