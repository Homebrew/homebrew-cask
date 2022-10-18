cask "visual-paradigm" do
  arch arm: "AArch64", intel: "WithJRE"

  version "17.0,20221001"
  sha256 arm:   "7a902e121e32f8a1066607a41302344270c33f02d2e4c9ca42e7a7bbb691345f",
         intel: "7f3be96a45e17854d9fd825bdb4d9d8737e25d1253aabe9dafd4a2b128bdcb9a"

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
