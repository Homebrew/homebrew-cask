cask "voodoopad" do
  version "5.3.0"
  sha256 "a2eb6a042df78170a88a9909fb40ee92bc407b4c95f414cac5b1fb8ddef390ce"

  # voodoopad.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://voodoopad.s3.amazonaws.com/VoodooPad-#{version}.zip"
  appcast "https://www.primatelabs.com/appcast/voodoopad#{version.major}.xml"
  name "VoodooPad"
  homepage "https://www.voodoopad.com/"

  depends_on macos: ">= :sierra"

  app "VoodooPad.app"
end
