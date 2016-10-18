cask 'unifi-controller' do
  version '5.2.9'
  sha256 'b00408103974b0b0d4b9ba0afc124bd7153b1faef624159f0225912c8b5e8ead'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
