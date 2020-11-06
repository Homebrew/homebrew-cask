cask "vitamin-r" do
  if MacOS.version <= :el_capitan
    version "2.58"
    sha256 "c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e"
  else
    version "3.20"
    sha256 "9c5570320a537c4ba46b9e45ef9cd4d6fbd46c3d07f850b39862533df1bba1cb"
  end

  url "https://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  appcast "https://www.publicspace.net/app/vitamin#{version.major}.xml"
  name "Vitamin-R"
  homepage "https://www.publicspace.net/Vitamin-R/"

  auto_updates true

  app "Vitamin-R #{version.major}.app"
end
