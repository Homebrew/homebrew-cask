cask "visual-paradigm-ce" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.0,20260323"
  sha256 arm:   "ed9b0a4c161a325618076d24517bfd1064cd54a6f2521e82ee53f7322f62f09e",
         intel: "4cb37f7a9f75672d01e40b5a82fa6f9666e032a0b0fddb48ac34122d69c0e5b2"

  on_arm do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

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
