#!/bin/sh

REPOS="$1"
REV="$2"

/export/home/svn/scripts/svn-utils/bin/commit-email.rb \
   "$REPOS" "$REV" ruby-cvs@ruby-lang.org \
   -I /export/home/svn/scripts/svn-utils/lib \
   -r http://svn.ruby-lang.org/repos/ruby \
   --name Ruby \
   --error-to admin@ruby-lang.org \
   --from admin@ruby-lang.org

#   --rss-path ~/ruby.rdf \
#   --rss-uri http://svn.ruby-lang.org/rss/ruby.rdf \

/export/home/svn/scripts/cia/ciabot_svn.py "$REPOS" "$REV" ruby &
