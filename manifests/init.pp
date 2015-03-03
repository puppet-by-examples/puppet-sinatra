# Class: sinatra
#
# This class installs sinatra framework
#

class sinatra {

    # validate_platform() function comes from
    # puppet module gajdaw/diverse_functions
    #
    #     https://forge.puppetlabs.com/gajdaw/diverse_functions
    #
    if !validate_platform($module_name) {
        fail("Platform not supported in module '${module_name}'.")
    }

    Exec { path => [
        '/usr/local/sbin',
        '/usr/local/bin',
        '/usr/sbin',
        '/usr/bin',
        '/sbin',
        '/bin'
    ]}

    exec { 'sinatra:install':
        command => 'gem install sinatra',
        timeout => 6000,
    }

    exec { 'sinatra:thin':
        command => 'gem install thin',
    }

}
