cask :v1 => 'unifi-controller' do
  version '3.2.10'
  sha256 'e5aae4e05bac3d6903f91ac5fb74e7a3940795b549c71880e5dae4d163cddea2'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'Unifi Controller'
  homepage 'https://community.ubnt.com/t5/UniFi-Updates-Blog/bg-p/Blog_UniFi'
  license :commercial

  pkg 'Unifi.pkg'

  uninstall :pkgutil => 'com.ubnt.UniFi'
end
