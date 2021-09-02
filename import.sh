#!/bin/bash
set -e

echo "Run the Aleph Importer"
# exec bash -lc 'rails runner AlephReformattingImporter.new.import!'
exec bundle exec rails runner AlephReformattingImporter.new.import!
