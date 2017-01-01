cask 'zendserver' do
  version '9.0.1,7.0.11'
  sha256 'e8de80902d9066b2194d98e5ab4a4387d3a1f4359c624245d8beba4c14040ab9'

  url "http://downloads.zend.com/zendserver/#{version.before_comma}/ZendServer-#{version.before_comma}-php-#{version.after_comma}.dmg"
  name 'Zend Server'
  homepage 'https://www.zend.com/en/products/zend_server'

  pkg 'Zend Server.pkg'

  uninstall script:  {
                       executable: '/usr/local/zend/bin/uninstall.sh',
                       args:       ['--automatic'],
                     },
            pkgutil: 'zenith.pkg.ZendServer'

  caveats do
    files_in_usr_local
  end
end
