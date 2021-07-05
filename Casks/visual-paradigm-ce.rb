cask "visual-paradigm-ce" do
  version "16.3,20210701"
  sha256 "f2a3656f222aa1250f7d72cd71bf6d48789a301a886ccf2c2e16939574d11621"

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  name "Visual Paradigm Community Edition"
  desc "All-in-one UML, SysML, BPMN Modeling Platform for Agile"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vpce/checksum.html"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/vpce(\d+(?:\.\d+)*)/(\d+)/checksum\.html}i)
      "#{match[1]},#{match[2]}"
    end
  end

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"
end
