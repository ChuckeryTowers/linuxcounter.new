<?php

/*
 * This file is part of the FOSUserBundle package.
 *
 * (c) FriendsOfSymfony <http://friendsofsymfony.github.com/>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Syw\Front\MainBundle\Controller;

use FOS\UserBundle\FOSUserEvents;
use FOS\UserBundle\Event\FormEvent;
use FOS\UserBundle\Event\FilterUserResponseEvent;
use FOS\UserBundle\Event\GetResponseUserEvent;
use FOS\UserBundle\Model\UserInterface;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;
use Syw\Front\MainBundle\Entity\UserProfile;
use Syw\Front\MainBundle\Manager\CitiesManager;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

/**
 * Controller managing the user profile
 *
 * @author Christophe Coevoet <stof@notk.org>
 */
class ProfileController extends BaseController
{
    /**
     * Show the user
     */
    public function showAction()
    {
        $user = $this->getUser();
        if (!is_object($user) || !$user instanceof UserInterface) {
            throw new AccessDeniedException('This user does not have access to this section.');
        }
        $locale = $user->getLocale();
        $userProfile = $this->get('doctrine')
            ->getRepository('SywFrontMainBundle:UserProfile')
            ->findOneBy(array('user' => $user));
        $machines = $this->get('doctrine')
            ->getRepository('SywFrontMainBundle:Machines')
            ->findBy(array('user' => $user));
        $language = $this->get('doctrine')
            ->getRepository('SywFrontMainBundle:Languages')
            ->findOneBy(array('locale' => $locale));
        $languages = $this->get('doctrine')
            ->getRepository('SywFrontMainBundle:Languages')
            ->findBy(array('active' => 1), array('language' => 'ASC'));
        $metatitle = $this->get('translator')->trans('The user profile', array(), 'fos_user_profile_show');
        $title = $metatitle;
        $online = $this->getOnlineUsers();
        $host = $this->getHost();
        $actuallocale = $this->get('request')->getLocale();
        $transtolanguage = $this->get('doctrine')
            ->getRepository('SywFrontMainBundle:Languages')
            ->findOneBy(array('locale' => $actuallocale));
        $transform_array = $this->getTranslateForm();
        return $this->render('FOSUserBundle:Profile:show.html.twig', array(
            'formTrans_navi' => $transform_array['navi']->createView(),
            'formTrans_route' => $transform_array['route']->createView(),
            'formTrans_footer' => $transform_array['footer']->createView(),
            'formTrans_others' => $transform_array['others']->createView(),
            'transtolanguage' => $transtolanguage->getLanguage(),
            'language' => $language->getLanguage(),
            'host' => $host,
            'online' => $online,
            'metatitle' => $metatitle,
            'title' => $title,
            'user' => $user,
            'userprofile' => $userProfile,
            'machines' => $machines,
            'transtolanguage' => $transtolanguage->getLanguage(),
            'languages' => $languages
        ));
    }

    /**
     * Edit the user
     */
    public function editAction(Request $request)
    {
        $user = $this->getUser();
        if (!is_object($user) || !$user instanceof UserInterface) {
            throw new AccessDeniedException('This user does not have access to this section.');
        }

        $languages = $this->get('doctrine')
            ->getRepository('SywFrontMainBundle:Languages')
            ->findBy(array('active' => 1), array('language' => 'ASC'));

        /** @var $dispatcher \Symfony\Component\EventDispatcher\EventDispatcherInterface */
        $dispatcher = $this->get('event_dispatcher');

        $event = new GetResponseUserEvent($user, $request);
        $dispatcher->dispatch(FOSUserEvents::PROFILE_EDIT_INITIALIZE, $event);

        if (null !== $event->getResponse()) {
            return $event->getResponse();
        }

        /** @var $formFactory \FOS\UserBundle\Form\Factory\FactoryInterface */
        $formFactory = $this->get('fos_user.profile.form.factory');

        $form = $formFactory->createForm();
        $form->setData($user);

        $form->handleRequest($request);

        if ($form->isValid()) {
            /** @var $userManager \FOS\UserBundle\Model\UserManagerInterface */
            $userManager = $this->get('fos_user.user_manager');

            $event = new FormEvent($form, $request);
            $dispatcher->dispatch(FOSUserEvents::PROFILE_EDIT_SUCCESS, $event);

            $userManager->updateUser($user);

            if (null === $response = $event->getResponse()) {
                $url = $this->generateUrl('fos_user_profile_show');
                $response = new RedirectResponse($url);
            }

            $dispatcher->dispatch(FOSUserEvents::PROFILE_EDIT_COMPLETED, new FilterUserResponseEvent($user, $request, $response));

            return $response;
        }

        $metatitle = $this->get('translator')->trans('The user profile', array(), 'fos_user_profile_edit');
        $title = $metatitle;
        $online = $this->getOnlineUsers();
        $actuallocale = $this->get('request')->getLocale();
        $transtolanguage = $this->get('doctrine')
            ->getRepository('SywFrontMainBundle:Languages')
            ->findOneBy(array('locale' => $actuallocale));
        $transform_array = $this->getTranslateForm();
        return $this->render('FOSUserBundle:Profile:edit.html.twig', array(
            'formTrans_navi' => $transform_array['navi']->createView(),
            'formTrans_route' => $transform_array['route']->createView(),
            'formTrans_footer' => $transform_array['footer']->createView(),
            'formTrans_others' => $transform_array['others']->createView(),
            'transtolanguage' => $transtolanguage->getLanguage(),
            'online' => $online,
            'metatitle' => $metatitle,
            'title' => $title,
            'form' => $form->createView(),
            'languages' => $languages,
            'user' => $user
        ));
    }
}
