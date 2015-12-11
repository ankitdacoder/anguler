<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Angular-Laravel Authentication</title>
        <link rel="stylesheet" href="<?=asset('public/node_modules/bootstrap/dist/css/bootstrap.css') ?>">
    </head>
    <body ng-app="authApp">

        <div class="container">
            <div ui-view></div>
        </div>        

    </body>

    <!-- Application Dependencies -->
    <script src="<?=asset('public/node_modules/angular/angular.js') ?>"></script>
    <script src="<?=asset('public/node_modules/angular-ui-router/build/angular-ui-router.js') ?>"></script>
    <script src="<?=asset('public/node_modules/satellizer/satellizer.js') ?>"></script>

    <!-- Application Scripts -->
    <script src="<?=asset('public/app.js') ?>"></script>
    <script src="<?=asset('public/scripts/authController.js') ?>"></script>
    <script src="<?=asset('public/scripts/userController.js') ?>"></script>
</html>