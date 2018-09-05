cask 'watchguard-mobile-vpn-with-ssl' do
  version '12.0,534193'
  sha256 'e294bff0c61b9ac6a6ef0304d7e14dddab5b53b8d3844067641fbe8616725890'

  url "http://cdn.watchguard.com/SoftwareCenter/Files/MUVPN_SSL/#{version.before_comma.dots_to_underscores}/WG-MVPN-SSL_#{version.before_comma.dots_to_underscores}.dmg"
  name 'WatchGuard Mobile VPN with SSL'
  homepage 'https://www.watchguard.com/'

  pkg "WatchGuard Mobile VPN with SSL Installer V#{version.after_comma}.mpkg"

  uninstall pkgutil: 'com.watchguard.*'
end
