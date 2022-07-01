<?php

namespace App\Form;

use App\Entity\Singer;
use App\Entity\SongSearch;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SongSearchType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('title', TextType::class, [
                'label'    => false,
                'required' => false,
                'attr'     => [
                    'placeholder' => 'Recherche par titre'
                ]
            ])
            ->add('singer', EntityType::class, [
                'label'    => false,
                'required' => false,
                'placeholder' => 'Recherche par chanteur',
                'class'    => Singer::class,
                'choice_label' => 'firstname',
                'multiple'     => false,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class'      => SongSearch::class,
            'method'          => 'get', 
            'csrf_protection' => false
        ]);
    }

    public function getBlockPrefix()
    {
        return '';
    }
}
