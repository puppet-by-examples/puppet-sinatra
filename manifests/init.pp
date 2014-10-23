class sinatra {

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
