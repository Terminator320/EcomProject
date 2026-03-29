<?php

use App\Helpers\ViewHelper;

ViewHelper::loadHeader($data["title"]);
?>

<h1>Users Page</h1>
<div class="container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>User ID</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Email</th>
                <th>Phone #</th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach ($data["users"] as $user) { ?>
                <tr>
                    <td><?= $user["user_id"] ?></td>
                    <td><?= $user["fn_name"] ?></td>
                    <td><?= $user["ln_name"] ?></td>
                    <td><?= $user["email"] ?></td>
                    <td><?= $user["phone_number"] ?></td>
                </tr>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>

<?php

ViewHelper::loadJsScripts();
ViewHelper::loadFooter();
?>