cask "versions" do
  version "2.0.2,2005"
  sha256 "af7ff0931f4e1ea41f11782118262aab7e9b03e487fc92bf3cdc50cdf14fb9e0"

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
