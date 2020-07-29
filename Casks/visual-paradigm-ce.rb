cask "visual-paradigm-ce" do
  version "16.2,20200763"
  sha256 "b0276abaff42d3fe933b01ee9d8555ae1b4941bcdc4f519d4384905b81e9b239"

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast "https://www.visual-paradigm.com/downloads/vpce/checksum.html",
          must_contain: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name "Visual Paradigm Community Edition"
  homepage "https://www.visual-paradigm.com/"

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"
end
