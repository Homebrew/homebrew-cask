cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "5ef7bd8e37d1ab867815531f6cbd4df10f0cb4826a3853018871b96b71ef911e",
         intel: "87b07d77e30497246ff6e8b793faa740476747570de05962c0e3e336f31cffb7"

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
