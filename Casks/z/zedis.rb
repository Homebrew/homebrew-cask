cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.1"
  sha256 arm:   "7e478fc804adfccb7ec1328a277fea0eb1830438c28baff07ac94b3ff5d0cc80",
         intel: "d65002d93ef62e9061b7253d2e58c2330dbac53b0209aeb045400edc3ad4cdb2"

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
