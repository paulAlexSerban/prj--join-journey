# Project Title: MERN Full Stack App with Authentication and Security

This project aims to create a full-stack web application using the MERN stack (MongoDB, Express.js, React, Node.js), with a focus on robust authentication, security features, and scalable deployment using Docker and Kubernetes. The application will offer users the ability to sign up and log in to access various services provided by the platform.

## Features

-   **User Authentication**: Secure signup and login functionality with JWT (JSON Web Tokens), session tokens, and HTTP-only, secure cookies.
-   **Security Enhancements**: Implementation of XSS (Cross-Site Scripting) and CSRF (Cross-Site Request Forgery) protection, along with CORS (Cross-Origin Resource Sharing) policies.
-   **Dual Database Support**: Utilization of both MongoDB and MySQL databases to store and manage application data efficiently.
-   **Scalable Architecture**: Deployment configuration using Docker containers and Kubernetes for orchestration, ensuring the app can scale and manage loads effectively.
-   **State Management**: Use of React.js for the frontend, with Redux for global state management and React Router for navigation.
-   **Process Management**: Integration of PM2 for process management in the Node.js environment, enhancing reliability and uptime.

## Technology Stack

-   **Frontend**: React.js, Redux, React Router
-   **Backend**: Node.js, Express.js
-   **Databases**: MongoDB, MySQL
-   **Authentication**: JWT, session tokens, cookies
-   **Security**: XSS and CSRF protection, CORS
-   **Deployment**: Docker, Kubernetes, PM2

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

-   Docker
-   Kubernetes (Minikube or a cloud provider's Kubernetes service)
-   Node.js
-   MongoDB
-   MySQL

### Installation

1. **Clone the repository**

```bash
git clone https://github.com/paulAlexSerban/prj--join-journey.git
```

2. **Set up your environment variables**

Create `.env` files for your Node.js application and databases according to the sample provided in the repository.

3. **Start your Docker containers**

Navigate to the project directory and run:

```bash
docker-compose up --build
```

4. **Access the application**

The React application will be accessible at `http://localhost:3000`, and the API at `http://localhost:4000`.

## Development

Details on how to work on the frontend, backend, and databases, including running tests and making contributions to the project.

## Deployment

Instructions for deploying the application using Kubernetes, including setting up the environment and deploying the Docker containers to a Kubernetes cluster.

## Authors

-   **Paul Serban** - _Initial work_ - [YourGithubUsername](https://github.com/paulAlexSerban)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details.

