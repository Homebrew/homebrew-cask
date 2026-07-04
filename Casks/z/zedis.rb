cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.1"
  sha256 arm:   "6bb02e53cfb25c97f32b575c32084ddc34bcfbff3d19a3c5700323d01a5923f6",
         intel: "28a33485f2a1c83cfa20fa3a9cdbac91444a8cb14e89b1fac3966fe608631f33"

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
