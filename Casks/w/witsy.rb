cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.12.4"
  sha256 arm:   "1bcfed461e3560ebc15189646caa7b06fdcdea8a70dd342a1905475e2f097f5e",
         intel: "e5bfa1f56a1216cbe14f741fa3264197ffb10a0d7cfbe9bb1b7d56724f2634fe"

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
