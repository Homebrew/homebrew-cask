cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.3"
  sha256 arm:   "ba6e8d3898b8d8e5685462c0d0d8896dba4089e971251aa3ccdde5b88ff505b9",
         intel: "cb9b46c1a87b3ebbff8c1c1adf94dfe815beacc81a21cdf3da01b968e979f23d"

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
