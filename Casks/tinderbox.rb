cask "tinderbox" do
  version "8.9.1"
  sha256 "53f416de9f08034c6c20069ae8363b8bc5f228d9c63b462f8c82fb35609f2696"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name "Tinderbox"
  homepage "https://eastgate.com/Tinderbox/"

  livecheck do
    url "https://eastgate.com/Tinderbox/download.html"
    strategy :page_match
    regex(%r{href=.*?/tbx(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Tinderbox #{version.major}.app"
end
