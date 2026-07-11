cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.4"
  sha256 arm:   "734655e012857d2180cad330014bc35f7aa27f98760dc5b4f70900e8027ee270",
         intel: "92acd1b1d73bbcb648eedcea0c523a0c7b20033a73223bd3acf1ea323a76658b"

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
