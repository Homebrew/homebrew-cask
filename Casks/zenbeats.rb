cask "zenbeats" do
  version "3.1.3,9279"
  sha256 :no_check

  url "https://static.roland.com/assets/media/pkg/Zenbeats_Installer.pkg"
  name "Zenbeats"
  desc "Music creation app"
  homepage "https://www.roland.com/us/products/zenbeats/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "Zenbeats_Installer.pkg"

  uninstall pkgutil: "jp.co.roland.zenbeats"

  zap trash: [
    "~/Library/Caches/com.juce.locks/juceAppLock_Roland Zenbeats",
    "~/Library/Caches/jp.co.roland.zenbeats",
    "~/Library/Saved Application State/jp.co.roland.zenbeats.savedState",
  ]
end
