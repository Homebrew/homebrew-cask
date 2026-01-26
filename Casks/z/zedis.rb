cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.9"
  sha256 arm:   "255d207003aacb5ca4cc038099cab50c7acf88c0bfff080a6e6cde65a11a2b84",
         intel: "14534a2b547ad9fc72e6f30fa03e1dca390734657c400972033f59e858c9708e"

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
