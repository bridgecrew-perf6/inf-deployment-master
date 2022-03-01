cd /home/runner/work/${{ github.repository }}/${{ github.repository }}/ph3-lab-mgmt/
aws s3 sync exprepos/ s3://${{ secrets.ORG_S3_CS_TEST }}/ --recursive --include "*.html" --include "*.js" --include "*.css" --delete
# --delete flag will remove any file in the s3 that are not on the new build
