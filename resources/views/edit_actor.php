<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <form action="<?=env('APP_URL').'update/empleado/'.$registro->id?>" method="post">
        <input type="hidden" name="_token" value="<? echo csrf_token(); ?>">
        <label for="txtNombre">Nombre: </label>
        <input type="text" id="txtNombre" name="nombre" value="<?=$registro->nombre?>"><br>
        <label for="txtMail">Imagen: </label>
        <input type="file" id="txtMail" name="email" value="<?=$registro->email?>"><br>
        <button>Guardar</button>
    </form>
</body>
</html>