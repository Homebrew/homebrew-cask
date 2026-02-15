cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.4"
  sha256 arm:   "f84c8f83c47c395bd3d67361c7158648a82228c47b6c813741299e58f86ef789",
         intel: "f8d2b7e11523112372366206b3ebfcaccd496322f50687b9eff8edb5c44db8f4"

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
