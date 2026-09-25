cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.1,20260913"
  sha256 arm:   "5e969985e4e308b8523aca0fee2a43aefce6f29e2fdf7e593ecd68c87b825189",
         intel: "87a20d708cea775f40072d211b6e6bc46cdf9b581632c8aa429777fb2db05ddc"

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
