cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.1"
  sha256 arm:   "5a146b2a9851445805260dcaf9eb95a95a2b6239b905e6c7ae378cff2b4b778a",
         intel: "bea1f98053485bd758f94e8ae9556dea89ef42c0518ec39db6065ccb922cc345"

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
