cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "b41cf7ce902a3bd509f85c7da757b68faba004c37a78b85aec2cfd36f22babc7",
         intel: "c4958058908eb8b49cd84b0a61db0df35b2a60fff871264461e52a31989ae35f"

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
