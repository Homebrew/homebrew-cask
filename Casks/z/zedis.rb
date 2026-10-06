cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.2"
  sha256 arm:   "2c073317ef2b131255c1c309a7b439ddd1f9de049138667a6b6ab208274e462e",
         intel: "8628ea44a970361e70953bcc6875304eb8e6c7047fe19599e0e067254cf76d66"

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
