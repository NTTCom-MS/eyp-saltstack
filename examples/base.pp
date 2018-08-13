class { 'saltstack::minion':
  master => '127.0.0.1'
}

class { 'saltstack::master': }

saltstack::master::fileroot { 'base':
  files => [ '/srv/salt-data/base' ],
}

saltstack::master::pillar { 'base':
  files => [ '/srv/salt-data/pillar' ],
}

class { 'saltstack::cloud': }

class { 'saltstack::api': }

class { 'saltstack::syndic': }


saltstack::master::key { $::fqdn:
  status => 'accepted'
}
