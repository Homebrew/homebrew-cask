cask "voicenotes" do
  arch arm: "-arm64"

  version "1.4.3"
  sha256 arm:   "fe1d92c8563eee5314f5478cb58a8c860a90d1c6b8d63b8f6411b5e510417842",
         intel: "c55295b818c2a1a93689bbc6a94aac3e17152aaccea6476712378201044e0fb3"

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
