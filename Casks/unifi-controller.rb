cask 'unifi-controller' do
  version '5.2.7'
  sha256 'c736a643a25564aeb0a927b4a309b98810b997b091055ad733167fe55f06dc1d'

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
