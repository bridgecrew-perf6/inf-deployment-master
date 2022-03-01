#!/bin/bash
pwd
cd ../
ls -ltr
aws s3 sync exprepos/ s3://$BUCKET_ORG_S3_CS_TEST/ --include "*.html" --include "*.js" --include "*.css" --delete
# --delete flag will remove any file in the s3 that are not on the new build

# aws cloudfront create-invalidation --distribution-id ${{secrets.DISTRIBUTION_ID}} --paths "/civil11-test/*"
