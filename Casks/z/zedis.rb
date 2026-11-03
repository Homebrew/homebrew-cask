cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.16.0"
  sha256 arm:   "860f63195f63811830da23a082ad99e6fe1be067ec3b2ec18b91c91b8d2f8d47",
         intel: "981b9caa030101584db68eb18e59b90625a038ef8f10f5a155c1cfae17834c72"

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
