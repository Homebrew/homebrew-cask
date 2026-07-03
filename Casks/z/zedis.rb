cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "f4ba972c461f9294f50b97784eccaac951f5bb2ac96453bf5c0179a1e5d3040f",
         intel: "f0d46fa78f1eeb71c3bf159ae789b6a62daf7b78df886108ca9ddeb7bd0a00fd"

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
