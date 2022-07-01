<?php

namespace App\Form;

use App\Entity\SingerSearch;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SingerSearchType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('firstName', TextType::class, [
                'required' => false, 
                'label'    => false,
                'attr'     => [
                    'placeholder' => 'Rechercher par prénom'
                ]
            ])
            ->add('lastName', TextType::class, [
                'required' => false, 
                'label'    => false,
                'attr'     => [
                    'placeholder' => 'Rechercher par nom'
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class'      => SingerSearch::class,
            'method'          => 'get',
            'csrf_protection' => false
        ]);
    }

    public function getBlockPrefix()
    {
        return '';
    }
}
