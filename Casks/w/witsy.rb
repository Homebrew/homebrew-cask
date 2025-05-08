cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "bf61f6562e370b5f2c37558fa2f7f48cbf1ba5808f2403f8a325d8977410c428",
         intel: "574fcc26a6f6f0e4d028080b1032bd693518c9a9b853959975d397c377a07fcb"

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
