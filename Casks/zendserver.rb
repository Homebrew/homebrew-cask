cask 'zendserver' do
  version '9.1.1,7.1.7'
  sha256 'b58779dee4adee264801c22387e95e73d3d97a62e994ca0a56d303225ad94a20'

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
