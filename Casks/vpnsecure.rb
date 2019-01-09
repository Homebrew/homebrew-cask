cask 'vpnsecure' do
  version '2.1.6'
  sha256 '85026f7408cb516f5605369bdf9cb84fe9ac7a367cc737d9b7753b83c16f9345'

  url "https://downloads-us.vpnsecure.me/vpnsecure_#{version}.pkg"
  appcast 'https://www.vpnsecure.me/support/download/vpn/macos/'
  name 'VPNSecure OpenVPN Encrypted VPN Client'
  homepage 'https://www.vpnsecure.me/'

  pkg "vpnsecure_#{version}.pkg"

  uninstall pkgutil: 'com.vpnsecure.vpnsecureOpenvpn.*'
end
