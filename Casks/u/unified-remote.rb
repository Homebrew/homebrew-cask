cask "unified-remote" do
  version "3.13.0.2501"
  sha256 "9f0a1cc45f97ecbfa3feb3000b5488333557f265f695ca2f3951a78ebf873654"

  url "https://www.unifiedremote.com/static/builds/server/macosx/#{version.split(".").last}/ServerSetup-#{version}.dmg"
  name "Unified Remote"
  desc "Turn your smartphone into a universal remote control"
  homepage "https://www.unifiedremote.com/"

  livecheck do
    url "https://www.unifiedremote.com/download/mac"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Unified Remote.app"

  caveats do
    requires_rosetta
  end
end
