# Maybe for Railway

This is a basic setup for deploying Maybe OS to railway. It uses the [`Dockerfile`](./Dockerfile) to build and run the image.

## Deploying

1. Create a railway project
1. Add a Postgres database
1. Add this repository to your railway project
1. Setup the environment variables with the contents of the `.env.example` file
   1. Connect the database variables to the project
1. Deploy the project

## Local Development

To run the project locally, you can use the following commands:

```bash
docker compose up
```
