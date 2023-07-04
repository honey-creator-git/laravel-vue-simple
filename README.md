## Setup

-   Fork or clone the project

-   Ensure you have PHP 8.1 or newer installed and setup properly (alternatively use Docker, see <https://laravel.com/docs/9.x/sail>)

-   Ensure you have access to a PostgreSQL database

-   Ensure you have Node installed

-   Rename `.env.example` to `.env` and modify the values

-   Run `composer install` to install the PHP dependencies with Composer. Check out <https://getcomposer.org/> if necessary

-   Run `npm install` to install the Node dependencies needed by the project. Check out <https://nodejs.org/en/> if necessary

-   Run `php artisan:migrate` to setup the Laravel database migrations

-   Import `learn.sql` to mysql 

-   Run `npm run watch` to serve the Vue 3 files

-   Run `php artisan serve` to serve the PHP files

-   Open up `http://localhost:8000` in your browser
## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
