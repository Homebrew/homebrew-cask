cask "wxmacmolplt" do
  version "7.7,ijfreodzydtqn214qui3snyvj5vdovqr"
  sha256 "c3bf2e39a85d0c55ef28c9cc61b0897304a2804b79c34f765eb4537c1a97a5e8"

  url "https://uofi.box.com/shared/static/#{version.csv.second}.gz",
      verified: "https://uofi.box.com/shared/static/"
  name "wxMacMolPlt"
  desc "Cross-platform GUI input generator for GAMESS"
  homepage "https://brettbode.github.io/wxmacmolplt"

  livecheck do
    url "https://brettbode.github.io/wxmacmolplt/downloads.html"
    strategy :page_match do |page|
      match = page.match(
        /([a-z0-9]+)\.gz">\n.*wxMacMolPlt\s(\d+(?:\.\d+)*).+Does\snot\sinclude\sQuickTime\ssupport/i,
      )
      "#{match[2]},#{match[1]}"
    end
  end

  app "MacMolPlt/wxMacMolPlt.app"

  zap trash: [
    "~/Library/Preferences/gov.ameslab.wxMacMolplt.plist",
    "~/Library/Saved Application State/gov.ameslab.wxMacMolplt.savedState",
  ]
end
