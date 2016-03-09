cask 'zendserver' do
  version '8.5.1'
  sha256 '5a34d8ea941eed7bb981810bfee11f44ae27d0c9e40e50e8fd1c93b8781352c9'

  url "http://downloads.zend.com/zendserver/#{version}/ZendServer-#{version}-php-5.6.10.dmg"
  name 'Zend Server'
  homepage 'https://www.zend.com/en/products/server/'
  license :commercial

  pkg 'Zend Server.pkg'

  uninstall script:  { executable: '/usr/local/zend/bin/uninstall.sh', args: ['--automatic'] },
            pkgutil: 'zenith.pkg.ZendServer'

  caveats do
    files_in_usr_local
  end
end
