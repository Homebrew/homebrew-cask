cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.4"
  sha256 arm:   "d79577fd3ba45b80ea08a668c374f1fec87ebab2d5689765ee19abb5e8b1de4e",
         intel: "d68d9bd771e33dc4f90eaf6a007b0db941d1300348fa1820026b67241dcc3f91"

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
