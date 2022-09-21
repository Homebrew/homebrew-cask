cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.0,20220913"
  sha256 arm:   "08a81b74dc25d932e4fccf545b30adf70443fe2b2f7b83bf8a92b33e0b2a82c7",
         intel: "f13d5bc2c92b83131d8265d3bcc140a7b5b6010afd8922c83f3655539871a61d"

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
