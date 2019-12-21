#!/data/data/com.termux/files/usr/bin/sh
export GITEA_WORK_DIR=/data/data/com.termux/files/usr/var/gitea
exec /data/data/com.termux/files/usr/bin/gitea web -c /data/data/com.termux/files/usr/etc/gitea/app.ini
