cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.0,20230101"
  sha256 arm:   "a4cd72853cdeb81e090e7b4376cec37bf59d5fe3cef48db082f53fbc652f25b1",
         intel: "6a2d33059e333f21ab42037207bb8de7e23a149939ff41a5c827dcc6763e1bdd"

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
