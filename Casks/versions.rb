cask "versions" do
  version "2.0.6,2009"
  sha256 "e8a8cbc951e2f40b212fbeb6b3d7f8441dda9ed4ee53f6cf78b952ed63efb44c"

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
