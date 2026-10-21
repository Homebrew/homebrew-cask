cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.15.0"
  sha256 arm:   "fe97d00e1804ba4769af3d8a6bdb166415a9b563a03954136c01ae9e9f1067cb",
         intel: "9739317748df7401a76cc17164fec0c1827406571104d8ba8b4d6d2a60cf2818"

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
