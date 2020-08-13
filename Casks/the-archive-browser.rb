cask "the-archive-browser" do
  version "1.11.2,1504018288"
  sha256 "a9cffc4d7a4e9869c9b7542dff7b9614c487623fce6404ce779b0c4b654eb72b"

  # dl.devmate.com/cx.c3.thearchivebrowser/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/cx.c3.thearchivebrowser/#{version.major_minor.no_dots}/#{version.after_comma}/TheArchiveBrowser-#{version.major_minor.no_dots}.zip"
  appcast "https://updates.devmate.com/cx.c3.thearchivebrowser.xml"
  name "The Archive Browser"
  homepage "https://theunarchiver.com/archive-browser"

  auto_updates true

  app "The Archive Browser.app"

  zap trash: [
    "~/Library/Cookies/cx.c3.thearchivebrowser.binarycookies",
    "~/Library/Preferences/cx.c3.thearchivebrowser.plist",
  ],
      rmdir: [
        "~/Library/Application Support/The Archive Browser",
        "~/Library/Caches/cx.c3.thearchivebrowser",
      ]
end
