cask "writemapper" do
  version "4.4.3"
  sha256 "f53683ec73ebe37c56cdc58d29056cd167ee73a2ae8746b058b91164712e04fe"

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
