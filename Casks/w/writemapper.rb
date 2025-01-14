cask "writemapper" do
  version "4.4.2"
  sha256 "36b35c50ea8be546a248b4a44bcd7b660f08958d526412cc5a4b0a17896680b9"

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
