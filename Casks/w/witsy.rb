cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.1.1"
  sha256 arm:   "dcb75f783f19badd2139471fd083ba7e39f8d1d12383bcba8294e79ab9260fcd",
         intel: "06e0b9f9200fe4cf27c82caed0a4d2584d1c541384c43a7e5fa1fac80bdb8060"

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
