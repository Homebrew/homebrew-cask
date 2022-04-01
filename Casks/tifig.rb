cask "tifig" do
  version "0.8.0-201712302054"
  sha256 "b1dbbf70664d2d0cbfc92a9a1d28efebf60133a6a5f148a464882487c074f0a0"

  url "https://tifig-downloads.s3.amazonaws.com/tifig-#{version}-macosx.cocoa.x86_64.tar.gz",
      verified: "tifig-downloads.s3.amazonaws.com/"
  name "Tifig"
  homepage "https://www.tifig.net/"

  livecheck do
    url "https://www.tifig.net/download/"
    regex(%r{href=.*?/tifig-(\d+(?:\.\d+)*-\d+)-macosx\.cocoa\.x86_64\.tar\.gz}i)
  end

  app "Tifig.app"
end
