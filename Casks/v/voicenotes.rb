cask "voicenotes" do
  version "2.0.7"
  sha256 "1c87d7adf0bc526e071ecd46366c7146fc5cb42f7886f98ecdbc3e6fc8c84755"

  url "https://github.com/brewdotcom/vn-apps-release/releases/download/v#{version}/Voicenotes-#{version}-mac.zip",
      verified: "github.com/brewdotcom/vn-apps-release/"
  name "Voicenotes"
  desc "AI-powered app for recording, transcribing and summarising voice notes"
  homepage "https://voicenotes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Voicenotes.app"

  zap trash: [
    "~/Library/Application Support/Voicenotes",
    "~/Library/Preferences/com.voicenotes.app.plist",
  ]
end
