cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.6"
  sha256 arm:   "b837e20649ff755c9fe10cb8b8aff868a15cf8a8a155729397468d287e512baf",
         intel: "30c49b52779cd4fa90042c7ed4f1ec83d10d313c1680b092b7c9f455e51a1734"

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
