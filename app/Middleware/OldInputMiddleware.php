<?php

namespace App\Middleware;

/**
 *
 */
class OldInputMiddleware extends Middleware
{
  public function __invoke($request, $response, $next)
  {
      if(isset($_SESSION['errors'])) {
        $this->container->view->getEnvironment()->addGlobal('old', $_SESSION['old']);
      }
      
      $_SESSION['old'] = $request->getParams();
      //unset($_SESSION['old']);

      $response = $next($request, $response);
      return $response;
  }
}
