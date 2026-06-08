cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.2"
  sha256 arm:   "ccc04650ad8d40f67a5498cf4034f8a86ff153a86945139ae8ebc2f3bd913c50",
         intel: "c188e6dfe9cb3cabfe7dea459f5a260f69710b6b300a471ab33b1d48aa3b6eca"

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
