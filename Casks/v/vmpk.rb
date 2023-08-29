cask "vmpk" do
  version "0.8.10"
  sha256 "ad7e62f6e05f0d873488dbc7c4c60f3489592ea5dd6bdf809373c6ee164e90fb"

  url "https://downloads.sourceforge.net/vmpk/#{version.major_minor_patch}/vmpk-#{version}-mac-x64.dmg",
      verified: "downloads.sourceforge.net/vmpk/"
  name "VMPK"
  desc "Virtual MIDI Piano Keyboard"
  homepage "https://vmpk.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/vmpk/rss?path=/vmpk"
    regex(/url=.*?vmpk[._-]?v?(\d+(?:\.\d+)+)-mac-x64\.dmg/i)
  end

  depends_on formula: "fluid-synth"
  depends_on macos: ">= :sierra"

  app "vmpk.app"

  zap trash: [
    "~/Library/Preferences/net.sourceforge.vmpk.VMPK.plist",
    "~/Library/Saved Application State/net.sourceforge.vmpk.savedState",
  ]
end
