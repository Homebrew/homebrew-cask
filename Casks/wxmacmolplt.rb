cask "wxmacmolplt" do
  version "7.7"
  sha256 :no_check

  url "https://uofi.box.com/shared/static/ijfreodzydtqn214qui3snyvj5vdovqr.gz",
      verified: "https://uofi.box.com/shared/static/"
  name "wxMacMolPlt"
  desc "Cross-platform GUI input generator for GAMESS"
  homepage "https://brettbode.github.io/wxmacmolplt"

  app "MacMolPlt/wxMacMolPlt.app"
end
