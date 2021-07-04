cask "versions" do
  version "2.0.4,2007"
  sha256 "e9925075e036ff301d46fcd4bf9c4eef5e9dfb6016d510f1b22dbb99e10e0bfe"

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
