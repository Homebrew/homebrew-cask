cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.12.1"
  sha256 arm:   "03912a6db41b3023aac2a83fc4a86f525cf3830e602d21017b0ae65876f81b5e",
         intel: "e72e27fce33ed7d6b17a41b632bdb820899d0601ec9741bd58155217020554bb"

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
