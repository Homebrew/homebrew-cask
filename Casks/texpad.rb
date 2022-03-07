cask "texpad" do
  if MacOS.version <= :yosemite
    version "1.7.45,237,1487350"
    sha256 "5973da0e221a9f9168228d628e25b1f788bcdc9ca8cae86cb02089804f3240f5"
  elsif MacOS.version <= :el_capitan
    version "1.8.5,404,f8f30e5"
    sha256 "676a1b071142c022cdfda57668c811f7747b36ded442548073fe6dda1b9ca934"
  elsif MacOS.version <= :high_sierra
    version "1.8.15,529,346c842"
    sha256 "480bf4a3e8fd809c1eb07cb00099ed0d362996738a872efb42cb179488e8c1e1"
  else
    version "1.9.7,668,c234716"
    sha256 "730044485a31197da5ad41b722c1884a72eb9641bdaff250ec076655a7c31994"
  end

  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.csv.first.dots_to_underscores}__#{version.csv.second}__#{version.csv.third}.dmg",
      verified: "download.texpadapp.com/"
  name "Texpad"
  desc "LaTeX editor"
  homepage "https://www.texpad.com/mac"

  livecheck do
    url "https://www.texpad.com/static-collected/upgrades/texpadappcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version},#{item.url[/_([^_]+)\.dmg/i, 1]}"
    end
  end

  auto_updates true

  app "Texpad.app"

  zap trash: [
    "~/Library/Application Support/Texpad",
    "~/Library/Caches/com.vallettaventures.Texpad",
    "~/Library/Cookies/com.vallettaventures.Texpad.binarycookies",
    "~/Library/Preferences/com.vallettaventures.Texpad.plist",
    "~/Library/Saved Application State/com.vallettaventures.Texpad.savedState",
  ]
end
