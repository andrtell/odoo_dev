FROM docker.io/odoo:18
USER root
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
    python3-ipython
USER odoo
CMD ["odoo", "--dev", "all"]