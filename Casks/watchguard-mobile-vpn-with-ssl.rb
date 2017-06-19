cask 'watchguard-mobile-vpn-with-ssl' do
  version '11.12.2,523558'
  sha256 '2cf8435e9dd1ba77efc44e40b52f102306a0f1a3ba6f3830677ba55cf84b4232'

  url "http://cdn.watchguard.com/SoftwareCenter/Files/MUVPN_SSL/#{version.before_comma.dots_to_underscores}/WG-MVPN-SSL_#{version.before_comma.dots_to_underscores}.dmg"
  name 'WatchGuard Mobile VPN with SSL'
  homepage 'https://www.watchguard.com/'

  pkg "WatchGuard Mobile VPN with SSL Installer V#{version.after_comma}.mpkg"

  uninstall pkgutil: 'com.watchguard.*'
end
