FROM ghcr.io/maybe-finance/maybe:latest

# Set environment variables
ENV SELF_HOSTED=true \
    RAILS_FORCE_SSL=false \
    RAILS_ASSUME_SSL=false \
    GOOD_JOB_EXECUTION_MODE=async \
    SECRET_KEY_BASE=${SECRET_KEY_BASE} \
    DB_HOST=postgres \
    POSTGRES_DB=${POSTGRES_DB:-maybe_production} \
    POSTGRES_USER=${POSTGRES_USER:-maybe_user} \
    POSTGRES_PASSWORD=${POSTGRES_PASSWORD}

# Expose the application port
EXPOSE 3000

# Define a volume for app storage
VOLUME /rails/storage