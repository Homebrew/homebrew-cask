cask "visual-paradigm" do
  version "16.3,20210803"
  sha256 "85789e1548f1a0805645abd756a7753ffbe8934d75a695cb062b788257b1e2d9"

  url "https://www.visual-paradigm.com/downloads/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  name "Visual Paradigm"
  desc "UML CASE Tool supporting UML 2, SysML and Business Process Modeling Notation"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vp/checksum.html"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/vp(\d+(?:\.\d+)*)/(\d+)/checksum\.html}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Visual Paradigm.app"
end
