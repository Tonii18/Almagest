<?php

namespace Database\Seeders;

//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\BankEntity;
use App\Models\DeliveryTerm;
use App\Models\Discount;
use App\Models\PaymentTerm;
use App\Models\Transport;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Company;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();
        DeliveryTerm::factory(50)->create();
        BankEntity::factory(10)->create();
        Discount::factory(20)->create();
        PaymentTerm::factory(20)->create();
        Transport::factory(10)->create();
        Company::factory(10)->create();
        User::factory()->admin()->create();
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
