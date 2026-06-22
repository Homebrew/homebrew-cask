cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.4"
  sha256 arm:   "eec20f02b9d6f851a0a99aa2bfc75f6b70175f69ad6ab8c170ee279de63c004e",
         intel: "e105a8a8b1d3e7f5e3c9af86ec6e8cfc9a068f9902465cd0a66556c121b0c97e"

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
