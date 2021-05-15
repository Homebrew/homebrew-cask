cask "twitterrific" do
  version "5.4.6,169"
  sha256 "ecbb6ac03628f74f9a2d25fffe4a0d61986d5d8b73436e3653228b0853e2e35e"

  url "https://downloads.iconfactory.com/phoenix/Twitterrific-#{version.before_comma}+#{version.after_comma}.zip",
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
