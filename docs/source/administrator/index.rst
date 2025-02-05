Administrator Guide
===================

Installation
------------

OpenCDMS is not yet ready for production use. The instructions below give details on how to install a demo version of the software locally using docker containers.

Prerequisites
~~~~~~~~~~~~~
- git
- docker
- python 3


OpenCDMS database and API
~~~~~~~~~~~~~~~~~~~~~~~~~

..code-block:: shell
    
    git clone https://github.com/opencdms/opencdms
    cd opencdms/install

    # start the database and api containers
    docker compose up database api --detach

The OpenCDMS API is now accessible locally at http://localhost:5000. Furthermore, you can connect to the Postgress database using the details in `install/default.env`.

Build database
~~~~~~~~~~~~~~

1. Load data

..code-block:: shell

    # Build database from api container
    docker exec -it opencdms-api /bin/sh
    bash
    
    cd /local/app/
    git clone https://github.com/opencdms/opencdms-test-data
    
    # build_db.py is currrently expecting CDM data to be in ./data
    ln -s /local/app/opencdms-test-data/data/cdm data
    
    # Remove station/host metadata for Malawi
    sed -i 's/, "host_mwi.csv"//g' build_db.py
    
    python3 build_db.py


Install OpenCDMS App
~~~~~~~~~~~~~~~~~~~~

..code-block:: shell
    
    git clone https://github.com/opencdms/opencdms-app
    docker compose up app --detach


OpenCDMS App is now accessible locally at http://localhost:8000. The app will connect to the local API instance that was installed at http://localhost:5000.
