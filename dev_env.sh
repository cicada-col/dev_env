#!/bin/bash

# Function to display help information
function display_help() {
    echo "Usage: sudo ./dev_env [OPTIONS]"
    echo "Options:"
    echo "  -start     Start all services"
    echo "  -restart   Restart all services"
    echo "  -stop      Stop all services"
    echo "  -help      Display this help message"
}

# Function to start services
function start_services() {
    echo "Starting services..."
    service mariadb start
    echo "Mariadb started."
    service php8.2-fpm start
    echo "PHP-FPM started."
    service nginx start
    echo "Nginx started."
    service redis-server start
    echo "Redis server started."
    service elasticsearch start
    echo "Elasticsearch started."
}

# Function to restart services
function restart_services() {
    echo "Restarting services..."
    service mariadb restart
    echo "Mariadb restarted."
    service php8.2-fpm restart
    echo "PHP-FPM restarted."
    service nginx restart
    echo "Nginx restarted."
    service redis-server restart
    echo "Redis server restarted."
    service elasticsearch restart
    echo "Elasticsearch restarted."
}

# Function to stop services
function stop_services() {
    echo "Stopping services..."
    service mariadb stop
    echo "Mariadb stopped."
    service php8.2-fpm stop
    echo "PHP-FPM stopped."
    service nginx stop
    echo "Nginx stopped."
    service redis-server stop
    echo "Redis server stopped."
    service elasticsearch stop
    echo "Elasticsearch stopped."
}

# Check the number of arguments
if [ "$#" -ne 1 ]; then
    echo "Error: Incorrect number of arguments. Use -help for usage information."
    exit 1
fi

# Check the option and perform the corresponding action
case $1 in
    -start)
        start_services
        ;;
    -restart)
        restart_services
        ;;
    -stop)
        stop_services
        ;;
    -help)
        display_help
        ;;
    *)
        echo "Error: Unknown option. Use -help for usage information."
        exit 1
        ;;
esac

exit 0
