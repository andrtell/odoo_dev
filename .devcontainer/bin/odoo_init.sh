#!/usr/bin/env bash
odoo server --init ${1:-all} --without-demo ${1:-all} --stop-after-init