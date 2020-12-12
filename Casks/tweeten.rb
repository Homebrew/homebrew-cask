cask "tweeten" do
  version "5.1.0"
  sha256 "77834954e05bac65f01c1372e9e7758719ffc9e381997a54b4354af4e2cb1ffa"

  # github.com/MehediH/Tweeten/ was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast "https://github.com/MehediH/Tweeten/releases.atom"
  name "Tweeten"
  desc "Twitter client"
  homepage "https://tweetenapp.com/"

  app "Tweeten.app"

  zap trash: [
    "~/Library/Application Support/Tweeten",
    "~/Library/Logs/Tweeten",
    "~/Library/Preferences/com.builtbymeh.tweeten.plist",
    "~/Library/Saved Application State/com.builtbymeh.tweeten.savedState",
  ]
end
