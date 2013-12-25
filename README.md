Laravel-user roles and permissions
==================================

I was searching for the User based access control for the laravel but laravel is entirely new so i couldn’t find this on google. I just decided to develop this module for my CRM product. Now I am using for all of my projects where i need for user based authentication 

Please follow the steps to use this plugin for the user based access control.

1. Run the script to create the tables which are used in this script.

2. After login keep your user details in the session i.e 
    $user = DB::table('users')->where('email', $userdata['email'])->first() ;
    Session::set("userdata",$user ); 

3. In your project directory put the code of filter.php file in app/filter.php, after login when you will come inside the admin your filter will call first and it will check for the user permissions.

4. Put the error.blade.php in the views folder. when user is not authenticated it will redirect to the error page you can customize this page as you want.

Thanks guys, hope it will help you and save your development time.

Please let me know if you need more help.

You can drop me emails at 
Kashif Horani
kashifyh@gmail.com
