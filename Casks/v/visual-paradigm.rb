cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.0,20260311"
  sha256 arm:   "d5ba278aec6e0add259db0c52ff404ac8d0b84597e4d4ad96d03f5724face130",
         intel: "aea7ba24d8c86a03b8923e90cbce435e1b22928cb993ce667bac47b1fb2dd9ba"

  url "https://www.visual-paradigm.com/downloads/vp#{version.csv.first}/#{version.csv.second}/Visual_Paradigm_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
  name "Visual Paradigm"
  desc "UML, SysML, BPMN modelling platform"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vp/checksum.html"
    regex(%r{/vp(\d+(?:\.\d+)+)/(\d+)/checksum\.html}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Visual Paradigm.app"

  zap trash: [
    "~/Library/Application Support/Visual Paradigm",
    "~/Library/Application Support/VisualParadigm",
    "~/Library/Saved Application State/com.install4j.1106-5897-7327-6550.5.savedState",
  ]
end
