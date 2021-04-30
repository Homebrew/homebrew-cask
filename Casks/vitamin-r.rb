cask "vitamin-r" do
  if MacOS.version <= :el_capitan
    version "2.58"
    sha256 "c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e"
  else
    version "3.26"
    sha256 "83f6816cfab6e82d68e61c1ea01f03098dded70cfb221ba4398fcb271e543564"
  end

  url "https://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  name "Vitamin-R"
  homepage "https://www.publicspace.net/Vitamin-R/"

  livecheck do
    url "https://www.publicspace.net/app/vitamin#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Vitamin-R #{version.major}.app"
end
