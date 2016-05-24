cask 'unifi-controller' do
  version '4.8.18'
  sha256 '490f7c4f20ea12d4d142d3db0be9f6b9c201c72032d45e56f348ae70ee55ebc6'

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
