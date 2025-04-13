#!/usr/bin/env bash

# Usage: source env.sh

set -o nounset -o errexit -o pipefail # -o xtrace 

get_config() {
	param="$1"
    if grep -q -E "^\s*\b${param}\b\s*=" "$ODOO_RC" ; then       
        value=$(grep -E "^\s*\b${param}\b\s*=" "$ODOO_RC" |cut -d " " -f3|sed 's/["\n\r]//g')
    fi;
	echo ${value}
}

export LOGFILE=$(get_config logfile) 

export PGHOST=$(get_config db_host)
export PGUSER=$(get_config db_user)
export PGDATABASE=$(get_config db_name)
export PGPASSWORD=$(get_config db_password)