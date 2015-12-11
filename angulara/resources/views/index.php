<!doctype html>
<html class="no-js" ng-app="authApp">
  <head>
    <meta charset="utf-8">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!-- build:css(.) styles/vendor.css -->
    <!-- bower:css -->
<link rel="stylesheet" href="<?=asset('public/bower_components/bootstrap/dist/css/bootstrap.min.css')?>"/>
        <!-- endbower -->
    <!-- endbuild -->
    
    <!-- build:css(.tmp) styles/main.css -->
    <link rel="stylesheet" href="<?=asset('public/bower_components/styles/main.css') ?>">
    <link rel="stylesheet" href="<?=asset('public/bower_components/styles/sb-admin-2.css') ?>">
    <link rel="stylesheet" href="<?=asset('public/bower_components/styles/timeline.css') ?>">
    <link rel="stylesheet" href="<?=asset('public/bower_components/metisMenu/dist/metisMenu.min.css') ?>">
    <link rel="stylesheet" href="<?=asset('public/bower_components/angular-loading-bar/build/loading-bar.min.css') ?>">
    <link rel="stylesheet" href="<?=asset('public/bower_components/font-awesome/css/font-awesome.min.css') ?>" type="text/css">
    <!-- endbuild -->
    
    <!-- build:js(.) scripts/vendor.js -->
    <!-- bower:js -->
    <script src="<?=asset('public/bower_components/jquery/dist/jquery.min.js') ?>"></script>
    <script src="<?=asset('public/bower_components/angular/angular.min.js') ?>"></script>
    <script src="<?=asset('public/bower_components/bootstrap/dist/js/bootstrap.min.js') ?>"></script>
    <script src="<?=asset('public/bower_components/angular-ui-router/release/angular-ui-router.min.js') ?>"></script>
    <script src="<?=asset('public/bower_components/json3/lib/json3.min.js') ?>"></script>
    <script src="<?=asset('public/bower_components/oclazyload/dist/ocLazyLoad.min.js') ?>"></script>
    <script src="<?=asset('public/bower_components/angular-loading-bar/build/loading-bar.min.js') ?>"></script>
    <script src="<?=asset('public/bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js') ?>"></script>
    <script src="<?=asset('public/bower_components/metisMenu/dist/metisMenu.min.js') ?>"></script>
    <script src="<?=asset('public/bower_components/Chart.js/Chart.min.js') ?>"></script>
    <!-- endbower -->
    <!-- endbuild -->
        <script src="<?=asset('public/node_modules/satellizer/satellizer.js') ?>"></script>

    <!-- build:js({.tmp,app}) scripts/scripts.js -->
         <script src="<?=asset('public/app.js') ?>"></script>
        <script src="<?=asset('public/sb_admin/app/js/sb-admin-2.js') ?>"></script>
         <script type="text/javascript" src="<?=asset('public/directives/header/header.js')?>"></script>
    <script type="text/javascript" src="<?=asset('public/directives/header/header-notification/header-notification.js')?>">
    </script>
    <script type="text/javascript" src="<?=asset('public/directives/sidebar/sidebar.js')?>"></script>
    <script type="text/javascript" src="<?=asset('public/directives/sidebar/sidebar-search/sidebar-search.js')?>"></script>
    <link rel="stylesheet" href="<?=asset('public/angular-toggle-switch/angular-toggle-switch.css') ?>" type="text/css">
   
    <script type="text/javascript" src="<?=asset('public/angular-toggle-switch/angular-toggle-switch.min.js')?>"></script>
     
  
              <script type="text/javascript" src="<?=asset('public/controllers/main.js')?>"></script>
               <script type="text/javascript" src="<?=asset('public/directives/timeline/timeline.js')?>"></script>
              <script type="text/javascript" src="<?=asset('public/directives/notifications/notifications.js')?>"></script>
              <script type="text/javascript" src="<?=asset('public/directives/chat/chat.js')?>"></script>
              <script type="text/javascript" src="<?=asset('public/directives/dashboard/stats/stats.js')?>"></script>

                

                   <script src="<?=asset('public/scripts/authController.js') ?>"></script>
                   <script src="<?=asset('public/scripts/userController.js') ?>"></script>
                   <script src="<?=asset('public/scripts/HomeCtrl.js') ?>"></script>
                   <script src="<?=asset('public/scripts/UserCtrl.js') ?>"></script>
    </head>
   
    <body>

    <div>

        <div ui-view></div>

    </div>

    </body>

</html>