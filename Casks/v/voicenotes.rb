cask "voicenotes" do
  arch arm: "-arm64"

  version "1.7.27"
  sha256 arm:   "94f28fe64220304029cdf86a8f21bb26ba9acc2cef84de06959ad14b278ab969",
         intel: "3010a484670377a0e93fd1d66b4086f539bae823b9f5e53398d8e80caa2c4fef"

  url "https://github.com/brewdotcom/vn-apps-release/releases/download/#{version}/Voicenotes-#{version}#{arch}.dmg",
      verified: "github.com/brewdotcom/vn-apps-release/"
  name "Voicenotes"
  desc "AI-powered app for recording, transcribing and summarising voice notes"
  homepage "https://voicenotes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Voicenotes.app"

  zap trash: [
    "~/Library/Application Support/Voicenotes",
    "~/Library/Preferences/com.voicenotes.app.plist",
  ]
end
