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
    require => Package['git'],
    }

  exec { 'wpsdb-cli':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/wp-sync-db-cli.git /vagrant/wordpress/wp-content/plugins/wp-sync-db-cli/',
    require => Package['git'],
    }

  exec { 'wpsdb-mf':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/wp-sync-db-media-files.git /vagrant/wordpress/wp-content/plugins/wp-sync-db-media-files/',
    require => Package['git'],
    }

      exec { 'bubuddy':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/backupbuddy.git /vagrant/wordpress/wp-content/plugins/backupbuddy/',
    require => Package['git'],
    }

      exec { 'wpml':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/wpml.git /vagrant/wordpress/wp-content/plugins/wpml/',
    require => Package['git'],
    }

      exec { 'usersnap':
    path => '/usr/bin',
    command => 'git clone https://paul:moardonutz@stash.djeholdings.com/scm/wpp/usersnap.git /vagrant/wordpress/wp-content/plugins/usersnap/',
    require => Package['git'],
    }
}