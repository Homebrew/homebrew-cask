cask "visual-paradigm-ce" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.0,20260321"
  sha256 arm:   "4737da14beccff43dcf4c7cc0da246c1756cd3a43a1b4d0a726e073ded1676f2",
         intel: "a13f2a06015cc66a2f83b6d64d4852d0b7fa1493f6cd23b97f67e57fb87a2e06"

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
