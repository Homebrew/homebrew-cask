cask "visual-paradigm-ce" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.3,20251166"
  sha256 arm:   "4a1a533e2c9fdb92f77a04d45555ede9e6c8f562c114cca560094c7b41465cba",
         intel: "604df83c88c756d6895ae1fdeb41a6ebe4778ccfaed726eb9ff69d82930ef24b"

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
