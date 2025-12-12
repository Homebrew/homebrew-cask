cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "1eef2473da91dc389f67a76d6a036cbd4cb6967209ce7eb7054c76f26cc26991",
         intel: "43928ea1e86e6b92be7b6a68f4d1bae741248e917b887f6d10d5d279d4276128"

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
