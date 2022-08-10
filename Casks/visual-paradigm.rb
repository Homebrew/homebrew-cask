cask "visual-paradigm" do
  arch = Hardware::CPU.intel? ? "WithJRE" : "AArch64"

  version "17.0,20220801"

  if Hardware::CPU.intel?
    sha256 "224ae7ee55a81fc6e49a4f9b0018e42584bcce75c6115d1dbeec8d9c3d691f83"
  else
    sha256 "626e638df254baf90ef77fed388101817d872e8bcafb79f163bde6ef06ca333d"
  end

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
