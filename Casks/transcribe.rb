cask "transcribe" do
  version "8.80.0"
  sha256 "2c32b81ebe15115550c74f6d758facac05acbd20d1da16237e1fe3fc60b04215"

  url "https://www.seventhstring.com/xscribe/transcribe.dmg"
  appcast "https://www.seventhstring.com/xscribe/history.html",
          must_contain: version.major_minor
  name "Transcribe!"
  desc "Transcribes recorded music"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  depends_on macos: ">= :big_sur"

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"

  zap trash: [
    "~/Library/Preferences/Transcribe!7 Preferences",
    "~/Library/Preferences/com.seventhstring.transcribe.plist",
  ]
end
