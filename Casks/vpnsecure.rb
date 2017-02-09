cask 'vpnsecure' do
  version :latest
  sha256 :no_check

  url 'https://downloads.vpnsecure.me/vpnsecure.pkg'
  name 'VPN Secure'
  homepage 'https://www.vpnsecure.me'

  pkg 'vpnsecure.pkg'

  uninstall pkgutil: 'com.vpnsecure.vpnsecureOpenvpn.*'
end
