cask "unified-remote" do
  version "3.14.0.2604"
  sha256 "30d4928fb40e0e711d6b66df955f714283b8f1db3000afbcfac7615724ca1d98"

  url "https://www.unifiedremote.com/static/builds/server/macosx/#{version.split(".").last}/ServerSetup-#{version}.dmg"
  name "Unified Remote"
  desc "Turn your smartphone into a universal remote control"
  homepage "https://www.unifiedremote.com/"

  livecheck do
    url "https://www.unifiedremote.com/download/mac"
    strategy :header_match
  end

  depends_on macos: :big_sur

  app "Unified Remote.app"

  uninstall quit: "com.unified.Unified-Remote"

  zap trash: "~/Library/Application Support/Unified Remote"
end
