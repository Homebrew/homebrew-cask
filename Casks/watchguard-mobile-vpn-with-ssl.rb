cask 'watchguard-mobile-vpn-with-ssl' do
  version '12.5.2,606431'
  sha256 '8f9aacfb9a167b21f004d51aa9696f1e1fb5bc7e0f262c3d3e0893d821b7152b'

  url "http://cdn.watchguard.com/SoftwareCenter/Files/MUVPN_SSL/#{version.before_comma.dots_to_underscores}/WG-MVPN-SSL_#{version.before_comma.dots_to_underscores}.dmg"
  name 'WatchGuard Mobile VPN with SSL'
  homepage 'https://www.watchguard.com/'

  pkg "WatchGuard Mobile VPN with SSL Installer V#{version.after_comma}.mpkg"

  uninstall pkgutil: 'com.watchguard.*'
end
