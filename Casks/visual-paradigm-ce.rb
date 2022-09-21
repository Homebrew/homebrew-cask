cask "visual-paradigm-ce" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.0,20220913"
  sha256 arm:   "775d43535931d596483ba2cf21935060497c8506ba7b70203256f510b10a4dd1",
         intel: "d9b72513e2e6b57cbb15833fbe71ef335e0852ca489b04547a763ed3e9792801"

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
  name "Visual Paradigm Community Edition"
  desc "All-in-one UML, SysML, BPMN Modeling Platform for Agile"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vpce/checksum.html"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/vpce(\d+(?:\.\d+)+)/(\d+)/checksum\.html}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"
end
