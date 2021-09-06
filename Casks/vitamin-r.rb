cask "vitamin-r" do
  if MacOS.version <= :el_capitan
    version "2.58"
    sha256 "c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e"
  else
    version "3.28"
    sha256 "5b3403deb748ea87b8ba1e1923b1277da642a9d3ec9e66fd5be0ac1a634ecb0a"
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
