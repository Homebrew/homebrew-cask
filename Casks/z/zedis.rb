cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.4"
  sha256 arm:   "31553c56680161ac93425c5da55159f2cd84167c835dae05e816c9b94dfafa53",
         intel: "f6dd7802699e02ea6147a1911a983655d6e6e811a1123f2152baea57a05e0e4a"

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
