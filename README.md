# Supervise

## Overview

Supervise is a monitoring software developed by Ragtech, a company specialized in manufacturing Uninterruptible Power Supplies (UPS). This project provides a convenient way to install Supervise within a Docker container, simplifying its deployment and usage. Additionally, it includes a Grafana dashboard for users who wish to import and visualize their data effectively.

## Features

- **Easy Installation**: Deploy Supervise quickly using Docker and Docker Compose.
- **Grafana Integration**: Import monitoring data into Grafana for advanced visualization and analysis.
- **User -Friendly Interface**: Access and manage your UPS monitoring easily through the Supervise interface.

## Prerequisites

- Docker and Docker Compose installed on your machine. You can download them from [Docker's official website](https://www.docker.com/get-started).

## Installation

To install Supervise using Docker Compose, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/tofoli/supervise.git
    ```
2. Navigate to the project directory:
    ```bash
    cd supervise
    ```
3. Start the services using Docker Compose:
    ```bash
    docker-compose up -d
    ```
4. Access Supervise by navigating to http://localhost:4470 in your web browser.

## Grafana Dashboard
If you want to visualize your data in Grafana, you can import the provided Grafana dashboard. Follow these steps:

1. Open Grafana and log in.
2. Click on the "+" icon in the left sidebar and select "Import."
3. Enter the dashboard ID or upload the JSON file provided in this repository.
4. Configure the data source to point to your Supervise instance.
5. Save and view your dashboard.

## Contributing
Contributions are welcome! If you have suggestions for improvements or find bugs, please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.