cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.12.3"
  sha256 arm:   "e64234c8d780a7a6149819f3a0c28018870c4db9876f006ccb741a8093967b10",
         intel: "9bd84ed8f93e5fbfb5d35208a18e6247c99fcf3172160c0f4d86a294972b7475"

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
