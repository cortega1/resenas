<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePeliculaActorsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('pelicula_actors', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('actor_id');
			$table->integer('pelicula_id');
            $table->text('interpretacion');
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
		Schema::drop('pelicula_actors');
	}

}
