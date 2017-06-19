cask 'watchguard-mobile-vpn-with-ssl' do
  version '11.12.2'
  sha256 '2cf8435e9dd1ba77efc44e40b52f102306a0f1a3ba6f3830677ba55cf84b4232'

  url "http://cdn.watchguard.com/SoftwareCenter/Files/MUVPN_SSL/#{version.dots_to_underscores}/WG-MVPN-SSL_#{version.dots_to_underscores}.dmg"
  name 'WatchGuard Mobile VPN with SSL'
  homepage 'https://www.watchguard.com/'

  pkg 'WatchGuard Mobile VPN with SSL Installer V523558.mpkg'

  uninstall pkgutil: 'com.watchguard.*'
end
