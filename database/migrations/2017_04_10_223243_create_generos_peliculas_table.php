<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGenerosPeliculasTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('generos_peliculas', function(Blueprint $table)
		{
			$table->increments('id');
            $table->integer('genero_id');
            $table->integer('pelicula_id');
            $table->tinyInteger('activo');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('generos_peliculas');
	}

}
