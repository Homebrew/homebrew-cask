cask "the-archive-browser" do
  version "1.11.2,111:1504018288"
  sha256 "a9cffc4d7a4e9869c9b7542dff7b9614c487623fce6404ce779b0c4b654eb72b"

  url "https://dl.devmate.com/cx.c3.thearchivebrowser/#{version.after_comma.before_colon}/#{version.after_colon}/TheArchiveBrowser-#{version.after_comma.before_colon}.zip",
      verified: "dl.devmate.com/cx.c3.thearchivebrowser/"
  name "The Archive Browser"
  homepage "https://theunarchiver.com/archive-browser"

  livecheck do
    url "https://updates.devmate.com/cx.c3.thearchivebrowser.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[%r{/(\d+)/TheArchiveBrowser-\d+\.zip}i, 1]}"
    end
  end

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
