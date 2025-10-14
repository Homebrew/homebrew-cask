cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "ddea0d8cfcaa9d7e022b19ee48225939b886bf1b65afc614d4c837a0abac92e1",
         intel: "e2a1df177acb402a7c70b9cecb7b5334c6f2b70b2d60f93b6fdca24b3a8a60d2"

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

  app "Witsy.app"

  zap trash: [
    "~/Library/Application Support/Witsy",
    "~/Library/Logs/Witsy",
  ]
end
