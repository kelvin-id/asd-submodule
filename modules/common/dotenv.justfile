#Just
DEFAULT_DOTENV:="./config/.env-example"
PROJECT_DOTENV:=".env"

set dotenv-load

# Creates the .env file if it does not exist or is older than DEFAULT_DOTENV
_env:
    #!/usr/bin/env bash
    if [ ! -f {{PROJECT_DOTENV}} ] || [ {{DEFAULT_DOTENV}} -nt {{PROJECT_DOTENV}} ]; then
        echo -e "\n---------------------------------------------------"
        echo "The .env file will be created or updated."
        cp {{DEFAULT_DOTENV}} {{PROJECT_DOTENV}}
        echo "We automatically copied {{DEFAULT_DOTENV}} to {{PROJECT_DOTENV}}"
        echo -e "---------------------------------------------------\n"
    else
        echo "No update needed."
    fi
