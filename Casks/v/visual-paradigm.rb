cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.1,20261104"
  sha256 arm:   "c4a98fba4afd6416f365852ddec6279f837364d627c817c316c521ce72622f2c",
         intel: "8232d4802a92c280c3401bf6bd2a499d35a29c31b2b2bbd564d9b589cd04138b"

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
