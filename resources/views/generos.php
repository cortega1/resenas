<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        ul{
            list-style-type: none;
        }
        
        ul li{
            margin-left:-2em;
        }
    </style>
</head>
<body>
    <h2>Generos</h2>
    <ul>
        <? foreach($registros as $registro) {?>
            <li><a href="<?=env('APP_URL')?>genero/<?=$registro->id?>"><?=$registro->nombre?></a></li>
        <? } ?>
    </ul>
    <?=$registros->render()?>
</body>
</html>