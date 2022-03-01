#!/bin/bash
cd ../ && git clone --depth=1 -b s3-fix https://github.com/virtual-labs/ph3-lab-mgmt
cd ph3-lab-mgmt
git checkout s3-fix
npm install
npm run labgen -- ../
