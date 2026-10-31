cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.15.2"
  sha256 arm:   "19192ae0e7d7f07e00ecd8de466b5a93cd2c9d67734a64c707024bfe898fcfa9",
         intel: "b4103da458edbc25c769e033bc7b56a6329a765af757584d360efa00a830bcd2"

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
