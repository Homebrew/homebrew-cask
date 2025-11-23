cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "1693d05ea81456a679657694d4960bae6e1e5c74dbc2ed55ae501a8b9b04d236",
         intel: "e9299a0fbb37d7340a4277e196a0b1f4cca3edf43e9804313ca47c7560e19cbf"

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
