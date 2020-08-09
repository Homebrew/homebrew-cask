cask "transcribe" do
  version "8.75.1"
  sha256 "cca410ca85e6c1b19170fa973dc2cc4d90713e04e2e9b3f144186a50482ff6bc"

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
