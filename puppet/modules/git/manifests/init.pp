# Install git

class git::install {

  package{[ 'git', ]:
  ensure => installed,
  }
}

class wppuppet::git(
  $location = '/vagrant/wordpress/wp-content/plugins/'

) {

  file { '/vagrant/wordpress/wp-content/plugins/':
    ensure => directory,
    }

  exec { 'wpsdb':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/wp-sync-db.git /vagrant/wordpress/wp-content/plugins/wp-sync-db/',
    creates => '/vagrant/wordpress/wp-content/plugins/wp-sync-db/',
    require => Package['git'],
    }

  exec { 'wpsdb-cli':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/wp-sync-db-cli.git /vagrant/wordpress/wp-content/plugins/wp-sync-db-cli/',
    creates => '/vagrant/wordpress/wp-content/plugins/wp-sync-db-cli/',
    require => Package['git'],
    }

  exec { 'wpsdb-mf':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/wp-sync-db-media-files.git /vagrant/wordpress/wp-content/plugins/wp-sync-db-media-files/',
    creates => '/vagrant/wordpress/wp-content/plugins/wp-sync-db-media-files/',
    require => Package['git'],
    }

      exec { 'bubuddy':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/backupbuddy.git /vagrant/wordpress/wp-content/plugins/backupbuddy/',
    creates => '/vagrant/wordpress/wp-content/plugins/backupbuddy/',
    require => Package['git'],
    }

      exec { 'wpml':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/wpml.git /vagrant/wordpress/wp-content/plugins/wpml/',
    creates => '/vagrant/wordpress/wp-content/plugins/wpml/',
    require => Package['git'],
    }

      exec { 'usersnap':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/usersnap.git /vagrant/wordpress/wp-content/plugins/usersnap/',
    creates => '/vagrant/wordpress/wp-content/plugins/usersnap/',
    require => Package['git'],
    }

      exec { 'acf':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/advanced-custom-fields.git /vagrant/wordpress/wp-content/plugins/advanced-custom-fields/',
    creates => '/vagrant/wordpress/wp-content/plugins/advanced-custom-fields/',
    require => Package['git'],
    }

      exec { 'w3tc':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/w3-total-cache.git /vagrant/wordpress/wp-content/plugins/w3-total-cache/',
    creates => '/vagrant/wordpress/wp-content/plugins/w3-total-cache/',
    require => Package['git'],
    }

}