cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "18.1,20261011"
  sha256 arm:   "c100af4ef650fbc04fb246f0f6222a65c39f37dc50075333657350b03f711698",
         intel: "7ef988e7fb7036398d3539237be9b8cac99c412048433299c2c393fe8a01da68"

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
