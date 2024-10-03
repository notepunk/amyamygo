# Running DVMs: AmyAmyGo

## Installation (with Docker Compose)

1. Ensure Docker and Docker Compose are installed on your system.
2. Navigate to the project directory.
3. Create `.env` from the example provided by us `.env_example`

```bash
cp .env_example .env
```

and set the necessary environmental variables:

```bash
LNBITS_ADMIN_KEY = ""
LNBITS_WALLET_ID = ""
LNBITS_HOST = "https://demo.lnbits.com/"
NOSTDRESS_DOMAIN = "nostrdvm.com"
```

4. You can also change the name of the container in the `docker-compose.yml` file.

   ```yaml
    services:  # Define the services
    dvm:  # Name of the service
        container_name: amyamygo
   ```

5. Run the following command:

   ```sh
   # in foreground
   docker compose up --build

   # in background
   docker compose up --build -d
   ```

6. For updating the relay, run the following command:

   ```sh
   git pull
   docker compose build --no-cache

   # in foreground
   docker compose up

   # in background
   docker compose up -d
   ```

This will build the Docker image and start the `amyamygo` service as defined in the `docker-compose.yml` file. 

## License

This project is licensed under the MIT License.