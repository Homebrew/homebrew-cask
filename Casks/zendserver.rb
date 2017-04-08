cask 'zendserver' do
  version '9.0.2,7.0.15'
  sha256 '8f6f21336fb66f404c2da5ea3e21acd5c0018d64c8f2d8e5b0c58e7d40d641cb'

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
