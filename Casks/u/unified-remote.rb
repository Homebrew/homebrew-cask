cask "unified-remote" do
  version "3.14.0.2599"
  sha256 "da746d93a9b24419e139e45d71f24de1c640020dc78105926bfcd0f7e71d2170"

  url "https://www.unifiedremote.com/static/builds/server/macosx/#{version.split(".").last}/ServerSetup-#{version}.dmg"
  name "Unified Remote"
  desc "Turn your smartphone into a universal remote control"
  homepage "https://www.unifiedremote.com/"

  livecheck do
    url "https://www.unifiedremote.com/download/mac"
    strategy :header_match
  end

  depends_on :macos

  app "Unified Remote.app"

  caveats do
    requires_rosetta
  end
end
