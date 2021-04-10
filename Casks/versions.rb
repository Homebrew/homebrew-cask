cask "versions" do
  version "1.4.1-1144"
  sha256 "84d4320883b97140b920f3bf4fa95285cb4ecfc9a13c58ef346288f5d37db208"

  url "https://cdn.versionsapp.com/releases/Versions-#{version}.zip"
  name "Versions"
  homepage "https://versionsapp.com/"

  livecheck do
    url "https://updates.blackpixel.com/updates?app=vs"
    strategy :page_match
    regex(%r{href=.*?/Versions-(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :sierra"

  app "Versions.app"
end
