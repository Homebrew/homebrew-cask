cask "unified-remote" do
  version "3.13.0.2501"
  sha256 :no_check

  url "https://www.unifiedremote.com/download/mac"
  name "Unified Remote"
  homepage "https://www.unifiedremote.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Unified Remote.app"
end
