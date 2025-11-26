cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.3,20251166"
  sha256 arm:   "e05ebaa116831b0a0d1874385321558bbaa0ba9f79ec420fae3e4968c7724fef",
         intel: "1ce0e47d1c58f3e4302afbf1d77dc618d9c83aa98a738881694d85856633c56b"

  url "https://www.visual-paradigm.com/downloads/vp#{version.csv.first}/#{version.csv.second}/Visual_Paradigm_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Visual Paradigm.app"

  zap trash: [
    "~/Library/Application Support/Visual Paradigm",
    "~/Library/Application Support/VisualParadigm",
    "~/Library/Saved Application State/com.install4j.1106-5897-7327-6550.5.savedState",
  ]
end
