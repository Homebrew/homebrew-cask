cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "4f75eb3fc71ec9c5df5f74edd91d41ddec79144e15ee1d486d71ed793281ebbd",
         intel: "b8bca44df8711065441a480e8d5b962771c362861be570812134fb74feafc7e5"

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
