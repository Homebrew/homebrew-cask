cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "ab8a266714eeca2834c663d98b0f6945189c9e4ce34f8af7061a376de9973d3b",
         intel: "057bd195b46a199e4f9800637f3c358e758ef0c8990e25fb71b95005ffce8959"

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
