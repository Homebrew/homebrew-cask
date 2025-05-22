cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.6.5"
  sha256 arm:   "dc50f2b9b9b7fd7582f48746f38be8c9977f58e0d1087d28a811bba62149e74c",
         intel: "fd54fdf430c639f322ac13b2a2fe3bfd151bb60b6b3a55cba9f4e39725a6ab7d"

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
