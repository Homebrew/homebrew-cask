cask 'unifi-controller' do
  version '5.4.9'
  sha256 '5cc457db7b73f24ddc89503830368c1674fa0d3a9e740c4b497bceb4e616bbd7'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi/'

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall pkgutil: 'com.ubnt.UniFi'
end
