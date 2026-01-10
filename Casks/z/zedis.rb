cask "zedis" do
  version "0.1.7"
  sha256 "8f0c03e025c40c1b24f9acba53b91ef6378107ee602648a69cb375ce037917c1"

  url "https://github.com/vicanso/zedis/releases/download/v#{version}/Zedis-aarch64.dmg"
  name "Zedis"
  desc "Redis Client"
  homepage "https://github.com/vicanso/zedis"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Zedis.app"

  zap trash: [
    "~/Library/Application Support/com.bigtree.zedis",
    "~/Library/Preferences/com.bigtree.zedis.plist",
  ]
end
