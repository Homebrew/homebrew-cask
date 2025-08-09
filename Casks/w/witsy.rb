cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.13.0"
  sha256 arm:   "8e7be07493bb8da1f8172707411d2f5bab487ee584c2d3098d84ab02ff1e6cba",
         intel: "86923c12f7a9f24f8bdac51120e52755906b551fdb7ae39ea345ad3a4120b7a3"

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
