#!/bin/bash

if [[ $TRAVIS_OS_NAME == osx ]]; then
  brew --prefix openssl
  `brew --prefix openssl`/bin/openssl version

  gem install rubysl-openssl -v 2.7.0
  gem uninstall rubysl-openssl -i $(rbx -e 'puts Rubinius::GEMS_PATH') -v 2.6.0
fi
