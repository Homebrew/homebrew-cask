cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.15.1"
  sha256 arm:   "f59de5f16e8cb72fece9c6dc40118ff66b32db23d82cf665347edf247c93d86c",
         intel: "ba2a2c6ec70b152ba1be7f972f1765559c1f5da8f090e9ce996d4eacf387b774"

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
