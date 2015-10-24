cask :v1_1 => 'unifi-controller' do
  version '4.7.5'
  sha256 '366930d34a60bc0a7748e9b19240838ff87ac16092f52d07cae27891b945f82d'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi'
  license :commercial

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall :pkgutil => 'com.ubnt.UniFi'
end
