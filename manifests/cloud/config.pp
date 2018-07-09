class saltstack::cloud::config inherits saltstak::cloud {

  file { '/etc/salt/cloud':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0664',
    content => template("${module_name}/cloud/cloud.erb"),
  }
}
