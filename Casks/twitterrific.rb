cask "twitterrific" do
  version "5.4.10,189"
  sha256 "7bda86aca6cba5bf1fa44e993409d194d6bde8095d5709721022f4bff622d5a5"

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
    "~/Library/Application Scripts/*.com.iconfactory.Twitterrific",
    "~/Library/Caches/com.iconfactory.Phoenix",
    "~/Library/Containers/com.iconfactory.Phoenix",
    "~/Library/Containers/com.iconfactory.Phoenix.Fixerrific",
    "~/Library/Containers/com.iconfactory.Phoenix.ShareExtension",
    "~/Library/Group Containers/*.com.iconfactory.Twitterrific",
    "~/Library/Saved Application State/com.iconfactory.Phoenix.savedState",
  ]
end
