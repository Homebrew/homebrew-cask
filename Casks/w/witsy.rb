cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.11.1"
  sha256 arm:   "06e2ea9ccacb9417f168f62a1c46f63a2e21baf7c2e20a0f1f997d537d458dba",
         intel: "f4cfd7cf78b32f1a62907552d827f805e724da491f3683397040c0be5e249c5a"

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
