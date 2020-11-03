cask "visual-paradigm-ce" do
  version "16.2,20201101"
  sha256 "32e5fc52233064dc05bf88afb8fac47b169f7727764073bc9f134c4fefd10523"

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast "https://www.visual-paradigm.com/downloads/vpce/checksum.html",
          must_contain: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name "Visual Paradigm Community Edition"
  homepage "https://www.visual-paradigm.com/"

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"
end
