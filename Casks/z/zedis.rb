cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.8"
  sha256 arm:   "44eb9a2c7994a5c3a3df784e03687da59e026ce959ecd346014a51c25a7f9ad4",
         intel: "758ed940c8fd1293e6fc3bb073a6133be484c1b94ad9d4a2f66503cf1f48282b"

  url "https://github.com/vicanso/zedis/releases/download/v#{version}/Zedis-#{arch}.dmg"
  name "Zedis"
  desc "Redis GUI built with Rust and GPUI"
  homepage "https://github.com/vicanso/zedis"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Zedis.app"

  zap trash: [
    "~/Library/Application Support/com.bigtree.zedis",
    "~/Library/Saved Application State/com.bigtree.zedis.savedState",
  ]
end
