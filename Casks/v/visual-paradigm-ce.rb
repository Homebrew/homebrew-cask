cask "visual-paradigm-ce" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.2,20241201"
  sha256 arm:   "1c11c585fbf6b1517fa22447ab59f30d4e6fac4bf4c4bf2f7ee7f5043727d867",
         intel: "12bc8abe944542354cb8abacfe0015c569405cc19cc56346c35cba601abda8d8"

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
  name "Visual Paradigm Community Edition"
  desc "UML, SysML, BPMN modelling platform"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vpce/checksum.html"
    regex(%r{/vpce(\d+(?:\.\d+)+)/(\d+)/checksum\.html}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"

  zap trash: [
    "~/Library/Application Support/Visual Paradigm",
    "~/Library/Application Support/VisualParadigm",
    "~/Library/Saved Application State/com.install4j.1106-5897-7327-6550.5.savedState",
  ]
end
