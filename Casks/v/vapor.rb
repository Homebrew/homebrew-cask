cask "vapor" do
  arch arm: "ARM64", intel: "X86"

  version "3.9.0"
  sha256 arm:   "24fc0f831696fe2276a878f8eb4144b5f78c65d13d0a4542f537c900e863d08f",
         intel: "b3562847d4c3effd19d65713220e4fb6fab703d732db67ab990aaff9fdfb1988"

  url "https://github.com/NCAR/VAPOR/releases/download/v#{version}/VAPOR#{version.major}-#{version}-Darwin#{arch}.dmg"
  name "VAPOR"
  desc "Visualization and analysis platform"
  homepage "https://github.com/NCAR/VAPOR"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "vapor.app"

  # No zap stanza required
end
