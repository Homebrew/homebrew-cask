cask "voicenotes" do
  arch arm: "arm64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://dl.voicenotes.com/release/latest/Voicenotes-latest#{on_arch_conditional arm: "-arm64", intel: ""}.dmg"
  name "Voicenotes"
  desc "AI-powered app for recording, transcribing, and summarizing voice notes"
  homepage "https://voicenotes.com/"

  livecheck do
    skip "No version information available in the download URL or headers"
  end

  depends_on macos: ">= :big_sur"

  app "Voicenotes.app"

  zap trash: [
    "~/Library/Application Support/Voicenotes",
    "~/Library/Preferences/com.voicenotes.app.plist",
  ]
end
