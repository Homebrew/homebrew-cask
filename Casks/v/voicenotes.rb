cask "voicenotes" do
  arch arm: "-arm64"

  version "1.3.19"
  sha256 arm:   "7f739cc7d0c0caa24c3b0534ecf5df4a1220b474f3a85593d92a46d3a704eb66",
         intel: "c9be081d27cb2daee8381f0fcebba9777ed2b06afeac527ba6d17b93d30f09fc"

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
