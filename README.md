## Traction Welcome - Coding challenge for Traction Guest

## Overview

The idea of the project was to create a new feature for Traction Guest guests, which we called **Traction Welcome**: a customized page, accessed via QR Code scanning, where a guest can see details about their visit, such as a map of the facility, a schedule of their tasks, etc.

### Use case example

Let's say John arrives at São Paulo Center and checks in for the São Paulo Recruiting Mission event. During the check-in process, John will receive a QR code (which can be printed on his visitor badge or can be shown in the iPad). Then, John will scan the QR code using his phone's camera and the browser on his phone will open a page with more details to help John during his visit, with information like: where he should go first, what tasks he needs to accomplish during his visit, a map showing key points he will need to go to, etc.

## Project summary

The Proof of Concept for this feature was built as a Ruby on Rails application. Data about events, guests, and tasks are stored in a PostgreSQL database, and we have two views in the app: one for scanning the QR Code (which we simplified to a form where the user inputs an URL to a QR Code image) and another view for displaying event details.

## Team
* Débora Setton (@deborasetton)
* Guilherme Déo (@guideo)
* Humberto Grillo  (@humbertoraposa)

### Technologies
* Docker and Docker Compose for development environment setup
* Ruby on Rails for back-end
* Python for QR Code decoding
* Bootstrap for front-end

## How to run

### Dependencies
- Docker
- Docker compose

1. Clone the repository
2. Copy `.env.sample` file to `.env`
3. In the root directoy, run `docker-compose build`
3. In the root directoy, run `docker-compose up`
