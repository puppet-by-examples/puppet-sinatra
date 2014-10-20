class sinatra {

    exec { 'sinatra:install':
        command => "gem install sinatra",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        require => Class['php5']
    }

    exec { 'sinatra:thin':
        command => "gem install thin",
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        require => Class['php5']
    }


}
