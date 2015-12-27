#!/bin/bash

if [[ $TRAVIS_OS_NAME == osx ]]; then
  brew --prefix openssl
  `brew --prefix openssl`/bin/openssl version

  curl -L -o rubysl-openssl-2.7.0.gem https://rubygems.org/downloads/rubysl-openssl-2.7.0.gem
  gem install rubysl-openssl-2.7.0.gem
  gem uninstall rubysl-openssl -i $(rbx -e 'puts Rubinius::GEMS_PATH') -v 2.6.0
fi
