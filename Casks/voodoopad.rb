cask "voodoopad" do
  version "5.3.0,6450"
  sha256 "a2eb6a042df78170a88a9909fb40ee92bc407b4c95f414cac5b1fb8ddef390ce"

  url "https://voodoopad.s3.amazonaws.com/VoodooPad-#{version.csv.first}.zip",
      verified: "voodoopad.s3.amazonaws.com/"
  name "VoodooPad"
  homepage "http://www.voodoopad.com/"

  livecheck do
    url "https://www.primatelabs.com/appcast/voodoopad#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "VoodooPad.app"
end
