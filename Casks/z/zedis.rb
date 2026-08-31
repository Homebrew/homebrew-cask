cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.3"
  sha256 arm:   "a74bd0cc59931829cc4c49d4ca4511ddec3581d9e05302cd5103c37ed6e7eeee",
         intel: "257ec031cc4037f00a0c0711949a84e69fa8352010fa1c171dec746263620225"

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
