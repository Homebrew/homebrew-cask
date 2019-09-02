cask 'watchguard-mobile-vpn-with-ssl' do
  version '12.2,562079'
  sha256 'accfeff2bf955f5eeb25cc2ed140b3c73dd4c3a34226d87cfdd2352b871a07f2'

  url "http://cdn.watchguard.com/SoftwareCenter/Files/MUVPN_SSL/#{version.before_comma.dots_to_underscores}/WG-MVPN-SSL_#{version.before_comma.dots_to_underscores}.dmg"
  name 'WatchGuard Mobile VPN with SSL'
  homepage 'https://www.watchguard.com/'

  pkg "WatchGuard Mobile VPN with SSL Installer V#{version.after_comma}.mpkg"

  uninstall pkgutil: 'com.watchguard.*'
end
