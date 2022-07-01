<?php

namespace App\EventSubsriber;

use App\Entity\Song;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use EasyCorp\Bundle\EasyAdminBundle\Event\BeforeEntityPersistedEvent;

class EasyAdminSubscriber implements EventSubscriberInterface
{
    public static function getSubscribedEvents()
    {
        return [
            BeforeEntityPersistedEvent::class => ['setCreatedDate']
        ];
    }

    public function setCreatedDate(BeforeEntityPersistedEvent $event)
    {
        $entity = $event->getEntityInstance();

        if ( !($entity instanceof Song) ) {
            return;
        }
        $entity->setCreatedAt(new \DateTimeImmutable());
    }
}