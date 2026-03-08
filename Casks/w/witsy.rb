cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.5.2"
  sha256 arm:   "e9c8e371362c43b41812b17f7280807a5feb3cb9a4829ca0909824639ca23205",
         intel: "fb9d62c2e050e7969ef3bc535eb4ce02239174667b2eb174e8038eb2f0b29d5a"

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
