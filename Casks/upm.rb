cask "upm" do
  version "1.15.1"
  sha256 "eea01028ff6bf4bbcd857dcf9191905a59a6e7c9ea3914c35ca0275417724cef"

  url "https://downloads.sourceforge.net/upm/upm-#{version}/upm-mac-#{version}.tar.gz",
      verified: "downloads.sourceforge.net/upm/"
  appcast "https://sourceforge.net/projects/upm/rss"
  name "Universal Password Manager"
  homepage "https://upm.sourceforge.io/"

  app "upm-mac-#{version}/UPM.app"
end
