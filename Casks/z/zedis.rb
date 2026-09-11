cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.9.0"
  sha256 arm:   "baf81897e00c5db9592650eab4a9a3c1cad5fda669b6de825d72375fc073670d",
         intel: "3a39b4fa3d61b3848f552acb3b6ffab9e7ecb3c37a407786b23c83759003848b"

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
