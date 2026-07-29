cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.5"
  sha256 arm:   "8e73f94e9df4db88197fdb33880b6c17640f394cebd77f924abc853f62d3767c",
         intel: "c5adf2e53e1c3f35805eb72d12c89d8981d4a707810238f36f2d73cf23966bf7"

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
