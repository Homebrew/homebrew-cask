cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.12.6"
  sha256 arm:   "4f9bf3004b5eecd9910511dafd95f959e1b8be28574ef77e49128cc45f23e40e",
         intel: "c676cd2b7431830dd1626918202294488c8f4d1964628f8ec9337c0d6b16c4a6"

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
