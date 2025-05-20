cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.6.3"
  sha256 arm:   "391fe09ac6332e368e8086030f21426fa7e4286479c047c34e93810ec4e4eb33",
         intel: "7938b87c48f2f6412e3f9509fd420710baf67d0ef6ee83dbd2fad88e80f3821e"

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
