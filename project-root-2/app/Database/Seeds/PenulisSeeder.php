<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class PenulisSeeder extends Seeder
{
    public function run()
    {
        //$data = [
        //    [
        //        'name' => 'Tomy Syarifudin',
        //        'phone' => '089806211111',
        //        'address' => 'Jl Gus Dur no 150 Jombang',
        //        'email' => 'tomy123@gmail.com',
        //        'created_at' => Time::now(),
        //        'updated_at' => Time::now()
        //    ],
        //    [
        //        'name' => 'Agus Setiawan',
        //        'phone' => '089806222222',
        //        'address' => 'Jl Gus Dur no 150 Jombang',
        //        'email' => 'agus@gmail.com',
        //        'created_at' => Time::now(),
        //        'updated_at' => Time::now()
        //    ],
        //    [
        //        'name' => 'kang Dedi',
        //        'phone' => '089806233333',
        //        'address' => 'Jl Gus Dur no 150 Jombang',
        //        'email' => 'dedi@gmail.com',
        //        'created_at' => Time::now(),
        //        'updated_at' => Time::now()
        //    ],
        //];
        $faker = \Faker\Factory::create('id_ID');
                
        // Array untuk menyimpan data yang dihasilkan
        $dataList =[];

        for ($i = 0; $i < 100; $i++) {
            $data = [
                'name' => $faker->name,
                'phone' => $faker->phoneNumber,
                'address' => $faker->address,
                'email' => $faker->email,
                'created_at' => Time::createFromTimestamp($faker->unixTime()),
                'updated_at' => Time::now()
            ];
            // Menambahkan data ke dalam array $dataList
            $dataList[] = $data;
        }

        //using query builder
        $this->db->table('penulis')->insertBatch($dataList);
    }
}
