cask "writemapper" do
  version "4.7.0"
  sha256 "7c9b5c7fcc925a5524218e6b94b1f852c9d82dfdb91f5bdf972fb70bff8e44de"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gx.writemapper*.sfl*",
    "~/Library/Application Support/WriteMapper",
    "~/Library/Preferences/com.gx.writemapper*.plist",
    "~/Library/Saved Application State/com.gx.writemapper*.savedState",
  ]
end
