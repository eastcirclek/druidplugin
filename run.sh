#!/bin/sh

npm run build

FILENAME=dist.tar.gz

tar -zcf  $FILENAME dist

TARGET_HOST=ss3
TARGET_DIR=/var/lib/grafana/plugins/abhisant-druid-datasource
scp $FILENAME $TARGET_HOST:$TARGET_DIR/
ssh $TARGET_HOST tar -xvf $TARGET_DIR/$FILENAME

