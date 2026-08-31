cask "writemapper" do
  version "4.6.0"
  sha256 "b5feebe6de35bf0cf1e6c1165278038ef2cdc71e4cb046b4772ad141658396b9"

  url "https://writemapper.sfo3.cdn.digitaloceanspaces.com/writemapper-#{version.major}/mac/WriteMapper-#{version}-universal.dmg"
  name "WriteMapper"
  desc "Writing tool that helps produce text documents using mind maps"
  homepage "https://writemapper.com/"

  livecheck do
    url "https://writemapper.sfo3.digitaloceanspaces.com/writemapper-#{version.major}/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "WriteMapper.app"

  zap trash: [
    "~/Library/Application Support/WriteMapper",
    "~/Library/Preferences/com.gx.writemapper*.plist",
    "~/Library/Saved Application State/com.gx.writemapper*.savedState",
  ]
end
