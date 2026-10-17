cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.14.0"
  sha256 arm:   "95044bf7efb94575725674e0aa61996b5bae42acb19c189d5c3bad75f868630e",
         intel: "bbf2779c8fee512724d3be4934488e292eff084c0c6409ff28bf95fd690c099d"

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
