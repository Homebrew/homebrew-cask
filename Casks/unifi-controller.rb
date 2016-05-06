cask 'unifi-controller' do
  version '4.8.15'
  sha256 '3add590c4a379c4f91acf13648f685c1759921818d330ddb78a25f6f6b8a225d'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi'
  license :commercial

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
