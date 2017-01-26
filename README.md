# black_marshmallow
Projects from the black samsung tablet

Termux packages to install:

git
libsqlite-dev
nano
ruby
ruby-dev
libxml2
libxml2-dev
libxslt
libxslt-dev
clang
make

gem install bundler
# gem install pkg-config

mkdir ../usr/lib/ruby/include
cp ../usr/include/ruby-2.4.0/ruby.h ../usr/lib/ruby/include/
mkdir ../usr/lib/ruby/include/ruby
cp ../usr/include/ruby-2.4.0/ruby.h ../usr/lib/ruby/include/ruby/

gem install nokogiri -- --use-system-libraries --with-xml2-include=/data/data/com.termux/files/usr/include/libxml2 --with-xslt-dir=/data/data/com.termux/files/usr/include/libxslt


(when you get ENOENT thing with 'spawn', it needs --use-system-libraries)
