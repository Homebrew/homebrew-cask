cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.17.0"
  sha256 arm:   "a24ba0d77a8393dc79bd6d10d81e502edb8b3b53ae0621dc6b3cef9b321dfb4c",
         intel: "af186276cebba7b89f41bc66f7bdd34d34b8f8ed5647deb40a63b1dc9ccffcbd"

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
