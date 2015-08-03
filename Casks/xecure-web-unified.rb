cask :v1 => "xecure-web-unified" do
  version :latest
  sha256 :no_check

  url "https://open.hanabank.com/softforum/xwuni/install/xw_unified_install_mac_universal.pkg"
  name 'XecureWeb Unified'
  homepage "https://open.hanabank.com"
  license :gratis

  pkg "xw_unified_install_mac_universal.pkg"
  uninstall :script => "/Applications/XecureWebUnified/Uninstaller.app/Contents/MacOS/Uninstaller"
end
