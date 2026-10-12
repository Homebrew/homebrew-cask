cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.13.0"
  sha256 arm:   "d410d1b73402cb906b4163b07ab843b7c26c4c5252c6478181dc3b6d2e7632f0",
         intel: "f55ab01996f4257db5bfd1eef6b1f485100dc2a6d97f55f6b2795722a912b02a"

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
