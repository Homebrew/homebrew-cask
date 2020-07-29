cask "transcribe" do
  version "8.75"
  sha256 "6d6ff7c8975629d9b511f1d82ba6dbc81f60899ab4404fc29f9e1208042c68fe"

  url "https://www.seventhstring.com/xscribe/transcribe.dmg"
  appcast "https://www.seventhstring.com/xscribe/history.html"
  name "Transcribe!"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  depends_on macos: ">= :yosemite"

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"

  zap trash: [
    "~/Library/Preferences/Transcribe!7 Preferences",
    "~/Library/Preferences/com.seventhstring.transcribe.plist",
  ]
end
