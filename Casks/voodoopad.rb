cask "voodoopad" do
  version "5.3.0"
  sha256 "a2eb6a042df78170a88a9909fb40ee92bc407b4c95f414cac5b1fb8ddef390ce"

  url "https://voodoopad.s3.amazonaws.com/VoodooPad-#{version}.zip",
      verified: "voodoopad.s3.amazonaws.com/"
  appcast "https://www.primatelabs.com/appcast/voodoopad#{version.major}.xml"
  name "VoodooPad"
  homepage "https://www.voodoopad.com/"

  depends_on macos: ">= :sierra"

  app "VoodooPad.app"
end
