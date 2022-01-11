cask "visual-paradigm" do
  version "16.3,20211237"
  sha256 "598f244b50b264bbca1bd8da4635c5b558adac1fa791d95052213693e04be955"

  url "https://www.visual-paradigm.com/downloads/vp#{version.csv.first}/#{version.csv.second}/Visual_Paradigm_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_WithJRE.dmg"
  name "Visual Paradigm"
  desc "UML CASE Tool supporting UML 2, SysML and Business Process Modeling Notation"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vp/checksum.html"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/vp(\d+(?:\.\d+)+)/(\d+)/checksum\.html}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Visual Paradigm.app"
end
