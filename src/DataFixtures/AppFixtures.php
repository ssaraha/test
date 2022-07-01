<?php

namespace App\DataFixtures;

use App\Entity\Singer;
use App\Entity\Song;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        date_default_timezone_set('Africa/Nairobi');
        // $product = new Product();
        // $manager->persist($product);
        $faker = Factory::create('fr_FR');
        for( $i = 0; $i < 20; $i++ )
        {
            $singer = new Singer();
            $singer->setFirstname($faker->firstName);
            $singer->setLastname($faker->lastName);
            $singer->setAdress($faker->address);
            $singer->setCity($faker->city);
            $singer->setCreatedAt(new \DateTime());

            $manager->persist($singer);
            for( $j = 0; $j < 10; $j++ )
            {
                $song = new Song();
                $song->setTitle($faker->realText(50));
                $song->setSinger($singer);
                $song->setReleaseDate(new \DateTimeImmutable());
                $song->setCreatedAt(new \DateTime());

                $manager->persist($song);
            }
        }

        $manager->flush();
    }
}
