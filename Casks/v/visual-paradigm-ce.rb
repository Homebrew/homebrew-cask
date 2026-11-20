cask "visual-paradigm-ce" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.1,20261104"
  sha256 arm:   "550815b8cdd4497156374e8f035583657b885c9c329366d8fe3d3b25f88408d7",
         intel: "a6299cad96ad25c4ce1c08d4007b188eb4c45d2075ebc3ebe607a5c047798f21"

  url "https://eu8.dl.visual-paradigm.com/visual-paradigm/vpce#{version.csv.first}/#{version.csv.second}/Visual_Paradigm_CE_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
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

  depends_on :macos

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"

  zap trash: [
    "~/Library/Application Support/Visual Paradigm",
    "~/Library/Application Support/VisualParadigm",
    "~/Library/Preferences/com.install4j.1106-5897-7327-6550.5.plist",
    "~/Library/Saved Application State/com.install4j.1106-5897-7327-6550.5.savedState",
  ]
end
