cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.7"
  sha256 arm:   "57172b130608db35ee1a0401d7c9e71c1163b383b95ee02a2c76da97ab9337c5",
         intel: "b6a91179780d3acae3a79fdf2a5ad60f7b7086ca257b1af4355cff2ca57f97c2"

  url "https://github.com/vicanso/zedis/releases/download/v#{version}/Zedis-#{arch}.dmg"
  name "Zedis"
  desc "Redis GUI built with Rust and GPUI"
  homepage "https://github.com/vicanso/zedis"

  depends_on macos: ">= :monterey"

  app "Zedis.app"

  zap trash: [
    "~/Library/Application Support/com.bigtree.zedis",
    "~/Library/Preferences/com.bigtree.zedis.plist",
  ]
end
