cask "watchfacestudio" do
  version "1.3.12"
  sha256 :no_check

  url "https://developer.samsung.com/watch-face-studio/download.html" do |page|
    file_path = page
                .match(%r{href="(/watchfacestudio/file/.{8}-.{4}-.{4}-.{4}-.{12})".*Watch Face Studio for macOS})
                .captures[0]
    URI.join(page.url, file_path)
  end
  name "Watch Face Studio"
  desc "Graphic authoring tool for creating watch faces for the Wear OS"
  homepage "https://developer.samsung.com/WatchFaceStudio"

  livecheck do
    url "https://developer.samsung.com/watch-face-studio/download.html"
    regex(/href=.*?Watch Face Studio for macOS (\d+(?:\.\d+)+)/i)
  end

  pkg "WatchFaceStudio_#{version}.pkg"

  uninstall pkgutil: [
    "WatchFaceStudio",
  ]

  zap trash: [
    "~/Library/Application Support/watchfacestudio",
    "~/Library/Preferences/WatchFaceStudio.plist",
  ]
end
