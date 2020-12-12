cask "visual-paradigm-ce" do
  version "16.2,20201203"
  sha256 "1a8ad0621fad310d9526746ca9fd60300c436916f7deb80ecb1d853c399e6a06"

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast "https://www.visual-paradigm.com/downloads/vpce/checksum.html",
          must_contain: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name "Visual Paradigm Community Edition"
  homepage "https://www.visual-paradigm.com/"

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"
end
