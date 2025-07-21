cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.12.0"
  sha256 arm:   "bd6181264b0870eb518f20eb7fe352e54fb7d97be4bab471fa0718313a9f2378",
         intel: "0af57d29a17d385bc39a5a04f079bc981d9e00e9f7b8bcc8e931d8a09118405f"

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
