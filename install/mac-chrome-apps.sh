
# The makeapp script can be found on script/
MAKEAPP=${MAKEAPP:-$FRESH_MINE/script/makeapp.sh}

[ ! -d ~/Applications/Google+.app/ ] &&
    sh $MAKEAPP Google+ http://plus.google.com http://plus.google.com/favicon.ico

[ ! -d ~/Applications/Gmail.app/ ] &&
sh $MAKEAPP Gmail http://mail.google.com http://mail.google.com/favicon.ico

[ ! -d ~/Applications/GitHub.app/ ] &&
sh $MAKEAPP GitHub http://github.com http://octodex.github.com/images/baracktocat.jpg 
