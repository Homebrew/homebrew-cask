cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.2.3"
  sha256 arm:   "caf389a9484d2dda4c6fde31c95220addf529bbccf06cbb3fe959da6347a5ddd",
         intel: "94dcc97182b44e4b5a2539a53e6570c9686f5c94712474b815cfae8c9aa5e8ee"

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
