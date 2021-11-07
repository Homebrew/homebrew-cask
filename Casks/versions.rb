cask "versions" do
  version "2.0.8,2016"
  sha256 "d7946cb2ef3d735dab961201faec77998abeee440b1d5b3effbf0aeffda738d8"

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

  zap trash: [
    "~/Library/Application Support/com.versionsapp.v#{version.major}",
    "~/Library/Application Support/Versions",
    "~/Library/Caches/com.versionsapp.v#{version.major}",
    "~/Library/Preferences/com.versionsapp.v#{version.major}.plist",
  ]
end
