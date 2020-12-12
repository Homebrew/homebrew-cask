cask "zenbeats" do
  version :latest
  sha256 :no_check

  url "https://static.roland.com/assets/media/pkg/Zenbeats_Installer.pkg"
  name "Zenbeats"
  homepage "https://www.roland.com/us/products/zenbeats/"

  pkg "Zenbeats_Installer.pkg"

  uninstall pkgutil: "jp.co.roland.zenbeats.Zenbeats.pkg",
            quit:    "jp.co.roland.zenbeats",
            signal:  ["KILL", "jp.co.roland.zenbeats"]

  zap trash: [
    "~/Library/Caches/com.juce.locks/juceAppLock_Roland Zenbeats",
    "~/Library/Caches/jp.co.roland.zenbeats",
    "~/Library/Saved Application State/jp.co.roland.zenbeats.savedState",
  ]
end
