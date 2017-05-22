#!/bin/sh
if [ -n "$1" ]; then
	folder=~/Maildir/$1/
else
	folder=~/Maildir/INBOX/
fi
NEW=`find $folder/new -type f | wc -l`
OLD=`find $folder/cur -type f | wc -l`
echo $NEW / $OLD
