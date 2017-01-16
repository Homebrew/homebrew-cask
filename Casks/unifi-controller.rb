cask 'unifi-controller' do
  version '5.3.8'
  sha256 '8b5f700a89386833b46c19ec412eefa621c743381bc3e228d84d2dbbeb5f4679'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
