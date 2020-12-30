cask "visual-paradigm-ce" do
  version "16.2,20201219"
  sha256 "3a5abf036e364136ac18251d987bc0caf7239d36cf8da9f548b46f55afa8f72e"

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast "https://www.visual-paradigm.com/downloads/vpce/checksum.html",
          must_contain: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name "Visual Paradigm Community Edition"
  homepage "https://www.visual-paradigm.com/"

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"
end
