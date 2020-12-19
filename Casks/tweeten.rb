cask "tweeten" do
  version "5.2.0"
  sha256 "77afbd33851ac335982208a20cfa63772ebae7132c4dd25f16dee5a6a234b357"

  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip",
      verified: "github.com/MehediH/Tweeten/"
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
