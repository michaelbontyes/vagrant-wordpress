# Install composer

class composer::install {

  package { "curl":
    ensure => installed,
  }

  exec { 'install composer':
    command => 'curl -sSO https://getcomposer.org/composer.phar && sudo mv composer.phar /usr/local/bin/composer && sudo chmod 777 /usr/local/bin/composer',
    path    => '/usr/bin:/usr/local/bin',
    require => Package['curl'],
  }

exec { 'composer install codeception':
  command => 'composer global require "codeception/codeception=2.2"',
  cwd => '/home/vagrant',
  environment => ["COMPOSER_HOME=/usr/local/bin"],
  path    => '/usr/bin:/usr/local/bin:~/.composer/vendor/bin/',
  require => Exec['install composer']
}

exec { 'move codeception':
  command => 'sudo ln -s ~/.config/composer/vendor/codeception/codeception/codecept /usr/local/bin/codecept',
  environment => ["COMPOSER_HOME=/usr/local/bin"],
  path    => '/usr/bin:/usr/local/bin',
  require => Exec['composer install codeception']
}

}
