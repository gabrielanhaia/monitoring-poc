# Symfony 6 Metrics and Monitoring Project

This project serves as a demonstration of how to setup metrics and monitoring on a Symfony 6 project using Prometheus and Grafana.

## Project Components

- **Symfony 6**: The latest stable version of the Symfony PHP framework used for creating the web application.
- **PHP 8.2**: The version of PHP used in this project.
- **Caddy Server**: A powerful, enterprise-ready, open source web server with automatic HTTPS written in Go.
- **Prometheus**: An open-source monitoring and alerting toolkit.
- **Grafana**: An open-source platform for monitoring and observability.

## Prerequisites

Before running this project, you should have Docker installed on your machine.

## Setup

1. **Clone the Repository**

    ```bash
    git clone https://github.com/username/projectname.git
    ```

   Replace `username` and `projectname` with the actual username and project name.

2. **Navigate to the Project Directory**

    ```bash
    cd projectname
    ```

3. **Build and Run Docker Containers**

    ```bash
    docker-compose up -d --build
    ```

## Accessing the Application

The Symfony application will be running at http://localhost:8088

## Prometheus and Grafana

Prometheus will be running at http://localhost:9090

Grafana will be running at http://localhost:3000

## Useful Commands

- Symfony Cache Clear

    ```bash
    make cache-clear
    ```

- Symfony Cache Warmup

    ```bash
    make cache-warmup
    ```

## Contribution

Please feel free to fork this repository and contribute by submitting a pull request to enhance the functionalities.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
