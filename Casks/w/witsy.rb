cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.0.3"
  sha256 arm:   "882a5212993ea85d103e6f802ca4303104023314c3e62a6f5edf13c87d1ef92e",
         intel: "2dcc6b972235d4bdb8740bfc4534324c2bf31c3f81469cbf49c10635117fba5e"

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
