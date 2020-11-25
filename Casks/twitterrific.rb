cask "twitterrific" do
  version "5.4.5"
  sha256 "ca03e8b989a16cfb88cb86c776c42a7c88110ba1c9db5adf3b55fe15b85e3e57"

  # iconfactory.com/assets/software/phoenix/ was verified as official when first introduced to the cask
  url "https://iconfactory.com/assets/software/phoenix/Twitterrific-#{version}.zip"
  appcast "https://iconfactory.com/appcasts/Phoenix/appcast.xml"
  name "Twitterrific"
  name "Phoenix"
  desc "Twitter client"
  homepage "https://twitterrific.com/mac"

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
