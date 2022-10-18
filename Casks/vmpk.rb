cask "vmpk" do
  version "0.8.8"
  sha256 "e6cb409e0df2d1b173ae2279566544cc3626c18f672e9f65877863a0ab040083"

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
end
