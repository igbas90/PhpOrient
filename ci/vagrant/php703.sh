#!/usr/bin/env bash

# install with vagrant user
phpbrew init

export PHPBREW_SET_PROMPT=1

phpbrew install 7.0.3 +cli +json +readline +session +sockets +xml_all \
                       +curl +mysql +pdo +xml +debug +openssl +filter +hash +iconv +mbstring


[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

phpbrew switch 7.0.3
phpbrew ext install xdebug 2.4.0

cd ~
virtphp create php703 --verbose
echo "source ~/.virtphp/envs/php703/bin/activate" >> ~/.bashrc
