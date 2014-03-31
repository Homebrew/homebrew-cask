class Zendserver < Cask
  url 'http://downloads.zend.com/zendserver/6.3.0/ZendServer-6.3.0-php-5.5.7.dmg'
  homepage 'http://www.zend.com/en/products/server/'
  version '6.3.0'
  sha256 'a1e7f5c4801ae0658508dcbde9e71e6d914cd2546f5d261c7eb7ae31ef4bd31f'
  install 'Zend Server.pkg'
  uninstall :script => { :executable => '/usr/local/zend/bin/uninstall.sh', :args => ['--automatic'] }
  caveats do
    files_in_usr_local
  end
end
