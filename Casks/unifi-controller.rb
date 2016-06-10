cask 'unifi-controller' do
  version '5.0.6'
  sha256 '69c64e00807c35c0afae61d584818df548ae6fe800cdd7c2b5028dadaec02f2b'

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
