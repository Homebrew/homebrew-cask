cask "visual-paradigm-ce" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.1,20261012"
  sha256 arm:   "987251dd7bd4cea7a8742af293103eee380c363ac43bed5baad74dc1d9c8286b",
         intel: "dc63ccf0ba109445b37932a3432838bfd2e246470c5ca73ecf9e70f70643b07a"

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
    "~/Library/Saved Application State/com.install4j.1106-5897-7327-6550.5.savedState",
  ]
end
