cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.5"
  sha256 arm:   "761da541cc19923b39eeb74c8a9431ebaca3ff1c0bf021246bd2bdf6316fadab",
         intel: "1d887a35f200e43a90a84c58154abe93a7dfa76b7ef2f84007ff3eec34a1a3c9"

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
