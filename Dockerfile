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

# Create and set permissions for the storage directory
RUN mkdir -p /rails/storage \
    && groupadd -r appgroup \
    && useradd -r -g appgroup appuser \
    && chown -R appuser:appgroup /rails/storage \
    && chmod -R 775 /rails/storage

# Set the user (if needed)
USER appuser

# Expose the application port
EXPOSE 3000