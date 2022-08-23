cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.0,20220816"
  sha256 arm:   "3e50ce8a3aed5374df2e85f5102b705d3e434f625816c974ed721262fb556549",
         intel: "af1dea5f6b629d2e0e0a7347c53cd612d2ee8063084f272a79a2bbb085593f96"

  url "https://www.visual-paradigm.com/downloads/vp#{version.csv.first}/#{version.csv.second}/Visual_Paradigm_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
  name "Visual Paradigm"
  desc "UML CASE Tool supporting UML 2, SysML and Business Process Modeling Notation"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vp/checksum.html"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/vp(\d+(?:\.\d+)+)/(\d+)/checksum\.html}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Visual Paradigm.app"
end
