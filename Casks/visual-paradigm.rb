cask "visual-paradigm" do
  version "16.3,20210827"
  sha256 "96a5b499e9b589d7ff1d8252f1b84ce9516a81643aea642b8a9c3c9982f24e3c"

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
