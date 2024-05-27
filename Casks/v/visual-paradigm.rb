cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.2,20240527"
  sha256 arm:   "3e4e23f628368e621f056c8d8935ef1d50a0df57f669ced64bb7d7462fa5bf26",
         intel: "d386a416ead052eebd339d52262e5f36f4b4fc05cb4db1236606cae1fe1e3e58"

  url "https://www.visual-paradigm.com/downloads/vp#{version.csv.first}/#{version.csv.second}/Visual_Paradigm_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
  name "Visual Paradigm"
  desc "UML, SysML, BPMN modelling platform"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vp/checksum.html"
    regex(%r{/vp(\d+(?:\.\d+)+)/(\d+)/checksum\.html}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Visual Paradigm.app"

  zap trash: [
    "~/Library/Application Support/Visual Paradigm",
    "~/Library/Application Support/VisualParadigm",
    "~/Library/Saved Application State/com.install4j.1106-5897-7327-6550.5.savedState",
  ]
end
