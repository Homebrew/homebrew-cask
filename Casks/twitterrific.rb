cask "twitterrific" do
  version "5.4.8,179"
  sha256 "d3c27d5227491bd9efd9bdedbf96a10d6f8f9c2fc268aad752e3773cd30d83c2"

  url "https://downloads.iconfactory.com/phoenix/Twitterrific-#{version.csv.first}+#{version.csv.second}.zip",
      verified: "downloads.iconfactory.com/phoenix/"
  name "Twitterrific"
  name "Phoenix"
  desc "Twitter client"
  homepage "https://twitterrific.com/mac"

  livecheck do
    url "https://iconfactory.com/appcasts/Phoenix/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Phoenix.app"

  uninstall quit: "com.iconfactory.Phoenix"

  zap trash: [
    "~/Library/Application Scripts/com.iconfactory.Phoenix",
    "~/Library/Application Scripts/com.iconfactory.Phoenix.Fixerrific",
    "~/Library/Application Scripts/com.iconfactory.Phoenix.ShareExtension",
    "~/Library/Caches/com.iconfactory.Phoenix",
    "~/Library/Containers/com.iconfactory.Phoenix",
    "~/Library/Containers/com.iconfactory.Phoenix.Fixerrific",
    "~/Library/Containers/com.iconfactory.Phoenix.ShareExtension",
    "~/Library/Saved Application State/com.iconfactory.Phoenix.savedState",
  ]
end
