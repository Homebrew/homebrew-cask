cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.2"
  sha256 arm:   "67af3d05724ac2c42b25298b682b35d5376a08a8d54cd5a60de8436d62e7d425",
         intel: "71365ac25bd5099255b7d4b68d9194c12cc6a152ee8e6effe5bdc43a494449ce"

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
