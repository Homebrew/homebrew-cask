cask "visual-paradigm-ce" do
  version "16.2,20201010"
  sha256 "6acc167db3b68b52e18ca3ae0bf92760b45b1c3d2249c490b8de918d8daad109"

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast "https://www.visual-paradigm.com/downloads/vpce/checksum.html",
          must_contain: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name "Visual Paradigm Community Edition"
  homepage "https://www.visual-paradigm.com/"

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"
end
