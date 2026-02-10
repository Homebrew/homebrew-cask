cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.3"
  sha256 arm:   "ddfc9ff3b8547af80102757070e6e6e6c5e4e9392c52b36e90e3ec262011c44a",
         intel: "67fcf607f5b2caad23cd34ee29276aee4a0cdde44871538e3a3cdaf4b5a16919"

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
