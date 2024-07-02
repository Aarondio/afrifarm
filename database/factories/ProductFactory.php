<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->name(),
            'price' => $this->faker->randomFloat(2, 0, 9999),
            'qty' => $this->faker->randomNumber(0),
            'country' => $this->faker->country(),
            'state' => $this->faker->city(),
            'city' => $this->faker->city(),
            'img' => $this->faker->imageUrl(),
            'seller_id' => \App\Models\Seller::factory(),
            'category_id' => \App\Models\Category::factory(),
        ];
    }
}
