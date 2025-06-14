cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.8.2"
  sha256 arm:   "3556a080952e6f6e8ea0cdf25f978dd6a2a95f7afc68430703f358e84f04355d",
         intel: "3f91a2cdc5991c09aaa5401d8750f2a88ffa1925e1651859d74f1be41476a9e2"

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
