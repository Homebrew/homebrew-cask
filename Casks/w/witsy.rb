cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.13.2"
  sha256 arm:   "777e0156534fa6f51e5a3bce3288f89ba80edd09438a628afc6ec4714b7d6b03",
         intel: "d117eaf28887dd0bed8b25c2d83e34c1a1917bed0a53ad793ff89e4c93b21e6d"

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
