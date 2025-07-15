cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.11.2"
  sha256 arm:   "0d92af47b90a3fd9e0656f5ee1d08fd26b1cb65cf091bc523475e4b72a06311b",
         intel: "9d23696123007362dfd9688cdd1fc22cb7a564227ff54ab86bb20bddc1c8345c"

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
