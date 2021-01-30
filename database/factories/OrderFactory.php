<?php

use Faker\Generator as Faker;

$factory->define(\App\Models\Order::class, function (Faker $faker) {

   $user_id = rand(1,5);
   $data = [
       'user_id' => $user_id,
       'order_number' => $faker->isbn10,
       'price' => $faker->numberBetween(1000, 10000)
   ];

    return $data;
});
