<?php

namespace App\Repository;

use App\Entity\Song;
use Doctrine\ORM\Query;
use App\Entity\SongSearch;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;

/**
 * @extends ServiceEntityRepository<Song>
 *
 * @method Song|null find($id, $lockMode = null, $lockVersion = null)
 * @method Song|null findOneBy(array $criteria, array $orderBy = null)
 * @method Song[]    findAll()
 * @method Song[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SongRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Song::class);
    }

    public function findSongs(SongSearch $songSearch): Query
    {
        $query = $this->createQueryBuilder('s')
                      ->select('s', 'si')
                      ->join('s.singer', 'si');
                      //->getQuery()
                      //->getResult();
        if ( $songSearch->getTitle() ) {
            $query = $query->where('s.Title LIKE :title')
                           ->setParameter('title', '%'.$songSearch->getTitle().'%');
        }
        if ( $songSearch->getSinger() ) {
            $query = $query->andWhere('si.firstname LIKE :firstname')
                           ->setParameter('firstname', '%'.$songSearch->getSinger().'%');
        }
        
        return $query->getQuery();
    }

    public function add(Song $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Song $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

//    /**
//     * @return Song[] Returns an array of Song objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('s.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Song
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
