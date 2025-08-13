cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.13.1"
  sha256 arm:   "e858967196a016369b52074cbfd287c6f75b98c9f306274248e8c4031a1a31e3",
         intel: "d28e388e31de662651cfe78c1e0bee395a58f13162fec2aeab5236e7e1858f2b"

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
