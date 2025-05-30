cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.7.2"
  sha256 arm:   "468085ed570873bede8a4439e0fce91edbc86c42f40cb16d9d33752443db24fe",
         intel: "cf509c0a1fc5254622ff164823e1822cc4edf3e37911bb32ab9b51c5b0778677"

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
  depends_on macos: ">= :catalina"

  app "Witsy.app"

  zap trash: [
    "~/Library/Application Support/Witsy",
    "~/Library/Logs/Witsy",
  ]
end
