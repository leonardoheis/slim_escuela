<?php

namespace App\Controllers\Auth;

use App\Models\User;
use App\Controllers\Controller;
use Respect\Validation\Validator as v;
/**
 *
 */
class AuthController extends Controller
{
      public function getSignOut ($request, $response){
            $this->auth->logout();
            return $response->withRedirect($this->router->pathFor('home'));
      }

      public function getSignIn ($request, $response){
            return $this->view->render($response, 'auth/signin.twig');
      }

      public function postSignIn ($request, $response){

            $auth = $this->auth->attempt(
                  $request->getParam('username'),
                  $request->getParam('password')
            );

            if (!$auth) {
                  $this->flash->addMessage('error', 'Could no sign you in with those details.');
                  return $response->withRedirect($this->router->pathFor('auth.signin'));
            }

            return $response->withRedirect($this->router->pathFor('home'));
      }

      public function getSignUp($request, $response) {
          return $this->view->render($response, 'auth/signup.twig');
      }

      public function postSignUp($request, $response){

            $validation = $this->validator->validate($request,[
                  'username' => v::noWhitespace()->notEmpty()->length(1, 20)->UserAvailable(),
                  'password' => v::noWhitespace()->notEmpty()->alnum()->length(8-30),
            ]);

            if ($validation->failed()) {
                  return $response->withRedirect($this->router->pathFor('auth.signup'));
            }

            User::create([
                  'username' => $request->getParam('username'),
                  'password' => password_hash($request->getParam('password'), PASSWORD_DEFAULT),
            ]);

            $this->flash->addMessage('info', 'You have been signed up!');

            $this->auth->attempt($user->username, $request->getParam('password'));

            return $response->withRedirect($this->router->pathFor('home'));
      }
}
