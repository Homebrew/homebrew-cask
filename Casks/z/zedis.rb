cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.0"
  sha256 arm:   "12222cc3a0794860fab03783cfd5ebce286361940b2f4f30873c61c0e882557d",
         intel: "90c81cc3ff5649bd5ce1321490bc76b7fc0368832c9633731926fc2416a905d6"

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
