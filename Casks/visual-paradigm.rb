cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.0,20230201"
  sha256 arm:   "23a16caf8ee7dacd2a6f63011cb1efda06cb1ea166f41237e2d421a79516c49f",
         intel: "0400e70c8d87e34b390b29b3a0f2f0460fe96832239d75dffff2e08b7596e5eb"

  url "https://www.visual-paradigm.com/downloads/vp#{version.csv.first}/#{version.csv.second}/Visual_Paradigm_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
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
