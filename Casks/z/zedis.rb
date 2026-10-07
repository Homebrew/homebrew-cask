cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.4"
  sha256 arm:   "4e17ffad6c3bcf5ef8e6fd7a37e8b4ab63d15a2717149e9c020f02cee101170a",
         intel: "6461a521a6bec1c9cc33161bb72221b5e1e807748ed0308c6a6af896e2534bd2"

  url "https://github.com/vicanso/zedis/releases/download/v#{version}/Zedis-#{arch}.dmg"
  name "Zedis"
  desc "Redis GUI built with Rust and GPUI"
  homepage "https://github.com/vicanso/zedis"

  depends_on macos: :monterey

  app "Zedis.app"

  zap trash: [
    "~/Library/Application Support/com.bigtree.zedis",
    "~/Library/Preferences/com.bigtree.zedis.plist",
  ]
end
