cask "writemapper" do
  version "4.4.1"
  sha256 "61c23d2bbea1cb00cf7d0c59b9ba69ce0baadcd857c31976688b03ec06417cfe"

  url "https://writemapper.sfo3.cdn.digitaloceanspaces.com/writemapper-#{version.major}/mac/WriteMapper-#{version}-universal.dmg",
      verified: "writemapper.sfo3.cdn.digitaloceanspaces.com/"
  name "WriteMapper"
  desc "Writing tool that helps produce text documents using mind maps"
  homepage "https://writemapper.com/"

  livecheck do
    url "https://writemapper.sfo3.digitaloceanspaces.com/writemapper-#{version.major}/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "WriteMapper.app"

  zap trash: [
    "~/Library/Application Support/WriteMapper",
    "~/Library/Preferences/com.gx.writemapper*.plist",
    "~/Library/Saved Application State/com.gx.writemapper*.savedState",
  ]
end
