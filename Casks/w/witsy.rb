cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "4b3f51d05ce8769db8923d6a7129305689c4accf74743b69e5321f7929473c52",
         intel: "727eff659ffee691bb96b5da56a855ea684e7e2897d588b3d1b843a490f1dc51"

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
