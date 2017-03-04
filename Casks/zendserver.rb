cask 'zendserver' do
  version '9.0.2,7.0.15'
  sha256 '39b0935d3a537c4536989adcc452a216b0f19fc1a78f6f2b8ae8247cd69db794'

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
