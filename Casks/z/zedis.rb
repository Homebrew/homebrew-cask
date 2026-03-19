cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "43b3710f93a3c551ca9e2845e9431ba2b72b76c19d5f11dcb1ba3e3ebb7c43d0",
         intel: "10da5ab809c47533e929722501674fe28f392c0e8a800725dd424e9bb4d6f9d0"

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
