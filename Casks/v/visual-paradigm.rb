cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.1,20260914"
  sha256 arm:   "069b0e7a7b53942c4f4022ac42044080a8fd582c6a613fa34999573d7b0d20ea",
         intel: "d52b8b83a52f14db2d8ee0c9c49e2dfc4f36b02fe6cc9387cbf34089d6360a55"

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
    "~/Library/Saved Application State/com.install4j.1106-5897-7327-6550.5.savedState",
  ]
end
