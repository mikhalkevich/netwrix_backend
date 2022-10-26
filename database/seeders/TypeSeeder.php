<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Type;

class TypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Type::create(['name' => 'MSP Partner']);
        Type::create(['name' => 'Preferred Partner']);
        Type::create(['name' => 'Premium Partner']);
        Type::create(['name' => 'Elite Partner']);
        Type::create(['name' => 'Distributor']);
    }
}
