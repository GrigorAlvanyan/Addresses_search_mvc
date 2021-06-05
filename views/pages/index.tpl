
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="http://localhost/TasksMVC/public/media/css/style.css">
    <title>Search Address</title>

    <script
            src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous">
    </script>
</head>
<body>

<input type="text" id="name" placeholder="Введите текст">
<input type="button" id="done" value="Готово">
<div id="information">
    <p class="message"></p>
    <table class="tab">
        <thead class="table-head"></thead>
        <tbody class="table-body"></tbody>
    </table>
</div>

<form action="" method="get" id="result_form"></form>
{if isset($_GET['id'])}
<div class="col-lg-12 my-3 p-3 bg-white rounded shadow-sm ">
    <table class="table table-striped table-dark" id="addresses">
        <thead >
        <tr>
            <th scope="col">Distance < 5 Km</th>
            <th scope="col">Distance From 5 Km to 30 Km</th>
            <th scope="col">Distance more than 30 Km</th>
        </tr>
        </thead>
        <tbody>
        {$tableAddressesHtml}
        {if isset($tableAddresses) }
            {$tableAddresses}
        {else}

        {/if}

        </tbody>
    </table>
</div>
{/if}
<script src="http://localhost/TasksMVC/public/media/js/script.js"></script>
</body>
</html>