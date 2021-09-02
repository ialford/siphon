#!/bin/bash
set -e

echo "Run the Aleph Importer"
exec bash -lc 'rails runner AlephReformattingImporter.new.import!'
