cask "voicenotes" do
  arch arm: "-arm64"

  version "1.4.4"
  sha256 arm:   "a475bad904899b1567ffd6b9399aad2f42377dd859fcc5154df5514da15c770e",
         intel: "f74bf5f281a4cc09082c3a7941935508cba3ff014723a5e096e02797a9543978"

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
