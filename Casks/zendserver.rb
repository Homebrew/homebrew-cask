cask 'zendserver' do
  version '9.1.0,7.1.3'
  sha256 '6feb928904b2b4174db4601289f0614935c23975e93582cd777135d3e4d2d34b'

  url "http://downloads.zend.com/zendserver/#{version.before_comma}/ZendServer-#{version.before_comma}-php-#{version.after_comma}.dmg"
  name 'Zend Server'
  homepage 'https://www.zend.com/en/products/zend_server'

  pkg 'Zend Server.pkg'

  uninstall script:  {
                       executable: '/usr/local/zend/bin/uninstall.sh',
                       args:       ['--automatic'],
                       sudo:       true,
                     },
            pkgutil: 'zenith.pkg.ZendServer'

  caveats do
    files_in_usr_local
  end
end
