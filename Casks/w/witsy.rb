cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.12.2"
  sha256 arm:   "e08cfdb8535b5c55dd1ea4c8955f374d590327cf228178e4c55c0b431562abae",
         intel: "4059527dcbfcb24cc1cb0dc165575233a0afcb45690827c656ea25f6f3ff375f"

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
