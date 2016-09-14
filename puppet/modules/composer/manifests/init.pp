# Install composer

class composer::install
{

  package { "curl":
    ensure => installed,
  }

  exec { 'install composer':
    command => 'curl -sSO https://getcomposer.org/composer.phar && sudo mv composer.phar /usr/local/bin/composer && sudo chmod 777 /usr/local/bin/composer',
    path    => '/usr/bin:/usr/local/bin',
    require => Package['curl'],
  }

  exec { 'composer install codeception':
  command => 'curl -sSO http://codeception.com/codecept.phar && sudo mv codecept.phar /usr/local/bin/codecept && sudo chmod 777 /usr/local/bin/codecept',
  environment => ["COMPOSER_HOME=/usr/local/bin"],
  path    => '/usr/bin:/usr/local/bin',
  require => Exec['install composer']
  }

}
