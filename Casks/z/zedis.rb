cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.3"
  sha256 arm:   "dbc07ec6915940dc10ffed3ad090e7cea6878e6d038f5e8d8ac67918235ccd54",
         intel: "902aef5fffd8f1e73bad5842fdecbf0af35cb918ad5858e14dccb39c95dd9f35"

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
