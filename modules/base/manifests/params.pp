class base::params {
        case $::osfamily {
                'RedHat': {$ssh_name = 'sshd'}
                'Debian': {$ssh_name = 'ssh'}
                default: { fail('OS not supported by puppet module SSH') }
        }

$author = "Cynthia"

#       $ssh_name = $osfamily ? {
#               'RedHat' => 'sshd',
#               'Debian' => 'ssh',
#               default  => 'value',
#}



}
