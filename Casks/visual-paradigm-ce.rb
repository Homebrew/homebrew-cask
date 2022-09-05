cask "visual-paradigm-ce" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.0,20220901"
  sha256 arm:   "f008666b7f2978af1851693c79d283758490ec146abfc259d2bc7cf1f29284d9",
         intel: "73e9d28b295fce69af7dfd80a1d3636c16b567e7472bfa3c7374989abd0df4b9"

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
  name "Visual Paradigm Community Edition"
  desc "All-in-one UML, SysML, BPMN Modeling Platform for Agile"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vpce/checksum.html"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/vpce(\d+(?:\.\d+)+)/(\d+)/checksum\.html}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"
end
