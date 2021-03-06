#
class colorprompt::template inherits colorprompt {

  if $enable == true {
    $ensure = 'file'
  } else {
    $ensure = 'absent'
  }

  file { '/etc/profile.d/colorprompt.sh':
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('colorprompt/colorprompt.erb'),
  }

}
