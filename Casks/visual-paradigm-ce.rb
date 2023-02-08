cask "visual-paradigm-ce" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.0,20230101"
  sha256 arm:   "f8aa5893abb002466001edf3769676839f934ad475a8793ddeae8d94d7aa4cbf",
         intel: "56c7adf82d4b4593cb4d0f4f71f32edb5bef74637ba67962c16d99f13d50cc3f"

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
