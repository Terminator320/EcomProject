<?php

use App\Helpers\ViewHelper;

ViewHelper::loadHeader($data["title"]);
?>

<h1>Home page</h1>
<?= $data["message"]; ?>

<?php

ViewHelper::loadJsScripts();
ViewHelper::loadFooter();
?>