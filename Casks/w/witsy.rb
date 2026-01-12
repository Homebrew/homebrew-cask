cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "52fc3ecc7daad4cada119a6cd9691677228e49644242fb363795b6d2c8c64be6",
         intel: "f77b72baeebcf90643ece4d0de6babce09fcfa2b9f967d7841540ee65a81aba9"

  url "https://github.com/nbonamy/witsy/releases/download/v#{version}/Witsy-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/nbonamy/witsy/"
  name "Witsy"
  desc "BYOK (Bring Your Own Keys) AI assistant"
  homepage "https://witsyai.com/"

  livecheck do
    url "https://update.electronjs.org/nbonamy/witsy/darwin-#{arch}/0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Witsy.app"

  zap trash: [
    "~/Library/Application Support/Witsy",
    "~/Library/Logs/Witsy",
  ]
end
