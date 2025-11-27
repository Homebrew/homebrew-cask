cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.2.2"
  sha256 arm:   "157a398b45b2263160ad573448ec1a41cc78fa879c0d1c119c4f62ac2af0ac33",
         intel: "e39fc7555375fe94de46cd37468cf90aff692f3b91f26331bdfeb1b1f34039b5"

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
