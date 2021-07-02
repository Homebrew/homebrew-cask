cask "visual-paradigm" do
  version "16.3,20210701"
  sha256 "51fa4aa907230d710b1e5bb2bb77f383d34ace9278ced6a90373085c4489b12c"

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
