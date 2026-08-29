cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.2"
  sha256 arm:   "f227a7a0465e30e9f2b82efdc9dccef09c7b59132b1fe430abeb8b7e10de8291",
         intel: "5130bad9857ad12b494d057d933f91e176f38a3ef12708d4aae00c1687a97943"

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
