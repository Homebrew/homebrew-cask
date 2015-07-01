cask :v1 => 'unifi-controller' do
  version '4.6.6'
  sha256 '7ca063dfd368cd27fab2fd6fd60e317a736beafd8add9400b9b98553e8a6f858'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'Unifi Controller'
  homepage 'https://www.ubnt.com/download/?platform=unifi'
  license :commercial

  pkg 'Unifi.pkg'

  uninstall :pkgutil => 'com.ubnt.UniFi'
end
