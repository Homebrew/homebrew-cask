cask 'unifi-controller' do
  version '4.8.12'
  sha256 '88b596331761ac373a3bdb7a3442e8c665dfa3f2748e80f0bcd89c4bfa8fd88d'

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
