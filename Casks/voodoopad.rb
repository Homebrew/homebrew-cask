cask "voodoopad" do
  version "5.4.0,6608"
  sha256 "17f9bf20ade564f59cc65f7f6ca63419635f8350d1dee7e64ca9b8ba46fd9043"

  url "https://voodoopad.s3.amazonaws.com/VoodooPad-#{version.csv.first}.zip",
      verified: "voodoopad.s3.amazonaws.com/"
  name "VoodooPad"
  desc "Notes organizer"
  homepage "https://www.voodoopad.com/"

  livecheck do
    url "https://www.primatelabs.com/appcast/voodoopad#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "VoodooPad.app"
end
