<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="APP" content="{$APP}">
    <link rel="stylesheet" type="text/css" href="{$APP}/public/media/css/style.css">
    <link rel="stylesheet" type="text/css" href="{$APP}/public/media/css/resStyle.css">
    <title>Result</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
        crossorigin="anonymous">
    </script>
</head>
<body>

{include file='../templates/header.tpl'}

<main role="main">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                {if isset($tableAddresses) }
                    <div class="col-lg-12 my-3 p-3 bg-white rounded shadow-sm ">
                        <h3>Clicked address: {$clickedAddress['addresses_street']}</h3>
                        <table class="table" id="addresses">
                            <thead >
                            <tr>
                                <th scope="col">Distance < 5 Km</th>
                                <th scope="col">Distance From 5 Km to 30 Km</th>
                                <th scope="col">Distance more than 30 Km</th>
                            </tr>
                            </thead>
                            <tbody>
                            {$tableAddresses}
                            </tbody>
                        </table>
                    </div>
                {/if}
            </div>
        </div>
    </div>

</main>
<script src="{$APP}/public/media/js/sortScript.js"></script>
</body>
</html>
