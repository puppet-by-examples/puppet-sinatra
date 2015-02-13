class sinatra {

    # validate_platform() function comes from
    # puppet module gajdaw/diverse_functions
    #
    #     https://forge.puppetlabs.com/gajdaw/diverse_functions
    #
    if !validate_platform($module_name) {
        fail("Platform not supported in module '${module_name}'.")
    }

    exec { 'sinatra:install':
        command => "gem install sinatra",
        timeout => 6000,
        path    => '/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
    }

    exec { 'sinatra:thin':
        command => "gem install thin",
        path    => '/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
    }

}
