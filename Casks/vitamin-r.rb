cask "vitamin-r" do
  if MacOS.version <= :el_capitan
    version "2.58"
    sha256 "c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e"
  else
    version "4.07"
    sha256 "370de6b16da0d83e4ebf71cd106b8cff4165cc438650f145724ecb0de7c349f9"
  end

  url "https://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  name "Vitamin-R"
  desc "Collection of productivity tools and techniques"
  homepage "https://www.publicspace.net/Vitamin-R/"

  livecheck do
    url "https://www.publicspace.net/app/vitamin#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Vitamin-R #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Vitamin-R",
    "~/Library/Caches/net.publicspace.dist.vitaminr#{version.major}",
    "~/Library/Preferences/net.publicspace.dist.vitaminr#{version.major}.plist",
  ]
end
