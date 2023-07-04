<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" value="{{ csrf_token() }}" />

    <title>Learning Language</title>

    <link href="{{ mix('css/app.css') }}" type="text/css" rel="stylesheet" />
    <style>
        .bg-light {
            background-color: #eae9e9 !important;
        }

        body {
            padding-left: 50px;
            padding-right: 50px;
            padding-bottom: 50px;
        }

        @media screen and (max-width: 1280px) {
            #image_logo {
                width: 348px;
            }
        }
        @media screen and (min-width: 400px) {
            #image_logo {
                margin-top: 50px;
            }
        }

        @media screen and (max-width: 768px) {
            body {
                padding-left: 16px;
                padding-right: 16px;
                padding-bottom: 16px;
            }
        }
        @media  screen and (max-width: 400px) {
            #image_logo {
                width: 80%;
                margin-top: 16px;
            }
        }
    </style>
</head>

<body style="text-align: center;">
    <img id="image_logo" src="assets/logo.png">
    <div id="app"></div>

    <script src="{{ mix('js/app.js') }}" type="text/javascript"></script>
</body>

</html>
