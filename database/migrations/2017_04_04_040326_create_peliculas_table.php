<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePeliculasTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('peliculas', function(Blueprint $table)
		{
			$table->increments('id');
            $table->string('titulo');
            $table->date('fecha_lanzamiento');
            $table->text('descripcion');
            $table->string('duracion');
            $table->integer('productora_id');
            $table->integer('director');
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
		Schema::drop('peliculas');
	}

}
