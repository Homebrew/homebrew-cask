cask "versions" do
  version "2.0.3,2006"
  sha256 "3f309349c869e50431e7d94b45dc2815a14185a4ebad9b6bb0f0134122941ca1"

  url "https://updates.versionsapp.com/v#{version.major}/prod/Versions-#{version.before_comma}-#{version.after_comma}.zip"
  name "Versions"
  desc "Subversion client"
  homepage "https://versionsapp.com/"

  livecheck do
    url "https://updates.versionsapp.com/v#{version.major}/prod/appcast"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Versions.app"
end
