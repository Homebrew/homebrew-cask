cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.4.2"
  sha256 arm:   "b6192450159675d7d63378e0bac07115c31900a1808fd8760b671a32d48ea85e",
         intel: "c08dd69b17ffc70f1a1a3e653125bb2bd0a5934b76c53caedb2757987144f7c4"

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
