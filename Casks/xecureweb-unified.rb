cask 'xecureweb-unified' do
  version :latest
  sha256 :no_check

  url 'https://open.hanabank.com/softforum/xwuni/install/xw_unified_install_mac_universal.pkg'
  name 'XecureWeb Unified'
  homepage 'https://open.hanabank.com'

  pkg 'xw_unified_install_mac_universal.pkg'

  uninstall pkgutil: 'com.softforum.xecurewebunifiedclient'
end
