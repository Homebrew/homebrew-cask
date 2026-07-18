cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.2"
  sha256 arm:   "9fe1fefb7e0fc0c3ac3e5d36f3a9d3441dde6f633128f0a5c944284c5e8f3a16",
         intel: "6b5abc62f0029074dfc0bf12b0d491cbbc87ba7dbe566f31889994ae7ab07008"

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
