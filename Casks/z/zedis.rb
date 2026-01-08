cask "zedis" do
  version "0.1.6"
  sha256 "3a2886d3a5ecd0144c81a5919a688eb36604353cdb0c75379f19af0f2e10756f"

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
