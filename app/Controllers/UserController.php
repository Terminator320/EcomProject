<?php

declare(strict_types=1);

namespace App\Controllers;

use App\Domain\Models\UserModel;

use DI\Container;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class UserController extends BaseController
{
    public function __construct(Container $container, private UserModel $userModel)
    {
        parent::__construct($container);
    }

    public function index(Request $request, Response $response, array $args): Response
    {
        $data = [
            'title' => 'Users',
        ];

        $data["users"] = $this->userModel->getUsers();

        return $this->render($response, 'user/view.php', $data);
    }

    public function error(Request $request, Response $response, array $args): Response
    {

        return $this->render($response, 'errorView.php');
    }
}
