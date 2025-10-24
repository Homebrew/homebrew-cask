cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "3a5f585f5f0d82f6a495c7d28cd499957612340afe0a78b2cae47a10e06c4553",
         intel: "a40d970e6b46aecbea03759fd443011e645b016e70af6f511a524aceb4186212"

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
