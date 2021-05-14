cask "versions" do
  version "2.0.1,2004"
  sha256 "94057a685aa1089122544e5a869bcfc5cc14ea9771b3c03f4525c9dbad165382"

  url "https://updates.versionsapp.com/v#{version.major}/prod/Versions-#{version.before_comma}.zip"
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
