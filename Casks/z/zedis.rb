cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.18.0"
  sha256 arm:   "021b8a63a443e53e5b415df2328572a551d69f1155adfd746ccf7c2780656070",
         intel: "62590e8cc2bf41ab79231dac8f7b23b7631dc36926d3fa46ffc1feb7aa897ce5"

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
