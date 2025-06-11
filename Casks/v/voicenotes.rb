cask "voicenotes" do
  version :latest
  sha256 :no_check

  on_arm do
    url "https://dl.voicenotes.com/release/latest/Voicenotes-latest-arm64.dmg"

    depends_on arch: :arm64
  end
  on_intel do
    url "https://dl.voicenotes.com/release/latest/Voicenotes-latest.dmg"

    depends_on arch: :intel
  end

  name "Voicenotes"
  desc "AI-powered app for recording, transcribing, and summarizing voice notes"
  homepage "https://voicenotes.com/"

  livecheck do
    skip "No version information available in the download URL or headers"
  end

  app "Voicenotes.app"

  zap trash: [
    "~/Library/Application Support/Voicenotes",
    "~/Library/Preferences/com.voicenotes.app.plist",
  ]
end
