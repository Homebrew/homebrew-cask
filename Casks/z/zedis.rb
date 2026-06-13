cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.3"
  sha256 arm:   "864d27cf99baa0637353846994e0b4c5232cfce87f0403c63c42bedbb1119651",
         intel: "b2c6af69ac095982ad5152894cda84da310a3ee0c1b681b9e1029d5cfbf9521f"

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
