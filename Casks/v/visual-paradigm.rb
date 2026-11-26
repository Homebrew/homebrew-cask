cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.1,20261201"
  sha256 arm:   "e20f187631f4ee7d56a0e3034f97e83682820b2e6e8cca321fce0f543176910a",
         intel: "d3a57038560b157cae4c3e17f875a0edd6955665bd710eb5652195416c5e336e"

  url "https://eu8.dl.visual-paradigm.com/visual-paradigm/vp#{version.csv.first}/#{version.csv.second}/Visual_Paradigm_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
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

  depends_on :macos

  app "Visual Paradigm.app"

  zap trash: [
    "~/Library/Application Support/Visual Paradigm",
    "~/Library/Application Support/VisualParadigm",
    "~/Library/Preferences/com.install4j.1106-5897-7327-6550.5.plist",
    "~/Library/Saved Application State/com.install4j.1106-5897-7327-6550.5.savedState",
  ]
end
