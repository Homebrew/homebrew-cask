cask "wxmacmolplt" do
  version "7.7"
  sha256 :no_check

  url "https://uofi.box.com/shared/static/ijfreodzydtqn214qui3snyvj5vdovqr.gz",
      verified: "https://uofi.box.com/shared/static/"
  name "wxMacMolPlt"
  desc "Cross-platform GUI input generator for GAMESS"
  homepage "https://brettbode.github.io/wxmacmolplt"

  livecheck do
    url "https://brettbode.github.io/wxmacmolplt/downloads.html"
    strategy :page_match
    regex(/wxMacMolPlt (\d+(?:\.\d+)*) for Mac OS X 10.7 or newer/i)
  end

  app "MacMolPlt/wxMacMolPlt.app"

  zap trash: [
    "~/Library/Preferences/gov.ameslab.wxMacMolplt.plist",
    "~/Library/Saved Application State/gov.ameslab.wxMacMolplt.savedState",
  ]
end
