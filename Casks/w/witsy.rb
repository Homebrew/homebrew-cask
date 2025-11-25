cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "4097fe2effa51a73a96b648473dc5bff95bb5cf5224ed08e0c9a0ad3657f1e3e",
         intel: "cee992bf2b900da293466fb1cf27f616bb570be7922d8b9a5416e4ab49331622"

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
