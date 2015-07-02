cask :v1 => 'zendserver' do
  version '8.0.2'
  sha256 '80fa2d34fde1f62ef8374bebea7bb0ccaa85ec0dd5371f45609fc6bf49dc7423'

  url "http://downloads.zend.com/zendserver/#{version}/ZendServer-#{version}-php-5.6.5.dmg"
  name 'Zend Server'
  homepage 'https://www.zend.com/en/products/server/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Zend Server.pkg'

  uninstall :script => { :executable => '/usr/local/zend/bin/uninstall.sh', :args => ['--automatic'] },
            :pkgutil => 'zenith.pkg.ZendServer'
  caveats do
    files_in_usr_local
  end
end
