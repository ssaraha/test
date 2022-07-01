<?php

namespace App\Repository;

use App\Entity\Singer;
use App\Entity\SingerSearch;
use Doctrine\ORM\Query;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;

/**
 * @extends ServiceEntityRepository<Singer>
 *
 * @method Singer|null find($id, $lockMode = null, $lockVersion = null)
 * @method Singer|null findOneBy(array $criteria, array $orderBy = null)
 * @method Singer[]    findAll()
 * @method Singer[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SingerRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Singer::class);
    }

    /**
     * List and search singers
     *
     * @return Query
     */
    public function findSingers(SingerSearch $singerSearch): Query
    {
        $query = $this->createQueryBuilder('s');
        if ( $singerSearch->getFirstName() ) {
            $query = $query->where('s.firstname like :firstname')
                            ->setParameter('firstname', '%'.$singerSearch->getFirstName().'%');
        }
        if ( $singerSearch->getLastName() ) {
            $query = $query->andWhere('s.lastname like :lastname')
                            ->setParameter('lastname', '%'.$singerSearch->getLastName().'%');
        }
        return $query->getQuery();
                      //->getResult();
    }

    public function add(Singer $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Singer $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

//    /**
//     * @return Singer[] Returns an array of Singer objects
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

//    public function findOneBySomeField($value): ?Singer
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
