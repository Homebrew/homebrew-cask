cask "wxmacmolplt" do
  version "7.7.3,026tyu30ck2xeldbxhgjkmmuxvwg87mc"
  sha256 "5a822760b8f3160cfcac0ab24a32a3aff5af8fc7d16d78ea736651df1e9145df"

  url "https://uofi.box.com/shared/static/#{version.csv.second}.gz",
      verified: "uofi.box.com/shared/static/"
  name "wxMacMolPlt"
  desc "Cross-platform GUI input generator for GAMESS"
  homepage "https://brettbode.github.io/wxmacmolplt"

  livecheck do
    url "https://brettbode.github.io/wxmacmolplt/downloads.html"
    regex(/([a-z0-9]+)\.gz">\n.*wxMacMolPlt\s(\d+(?:\.\d+)*)/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "MacMolPlt/wxMacMolPlt.app"

  zap trash: [
    "~/Library/Preferences/gov.ameslab.wxMacMolplt.plist",
    "~/Library/Saved Application State/gov.ameslab.wxMacMolplt.savedState",
  ]
end
