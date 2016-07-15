cask 'unifi-controller' do
  version '5.0.7'
  sha256 '56d40277b03c05172b202d1d170384e095c8956d8c845aad353d7043bc3a37b6'

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
