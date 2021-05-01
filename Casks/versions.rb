cask "versions" do
  version "1.4.4,1147"
  sha256 "90c48061e30c6290914a5684e8f9770647430df5a85476a0365ac8c415e14709"

  url "https://updates.versionsapp.com/v1/prod/Versions-#{version.before_comma}.zip"
  name "Versions"
  desc "Subversion client"
  homepage "https://versionsapp.com/"

  livecheck do
    url "https://updates.versionsapp.com/v1/prod/appcast"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Versions.app"
end
