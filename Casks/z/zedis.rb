cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.6"
  sha256 arm:   "62d48432872c4697ea253c6989d75f55731a7757187a93db2e8a18dd3b72beca",
         intel: "c45a672fc39fa2f5b01ffe0ed786526d5fcd3c0cbf527a1bc91c918e69734046"

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
