cask "transcribe" do
  version "8.75.2"
  sha256 "f01781100cd3b9987c8f8892145a2eaa358df07b92e10e26f30b6a877f5b352c"

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
