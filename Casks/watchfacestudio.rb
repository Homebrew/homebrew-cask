cask "watchfacestudio" do
  version "1.4.13,68d9d015-e270-4982-907d-3527fae4955d"
  sha256 "0973377bb4f23713c7d47f3b3431af7e4d6a798fb88639f87e9b770ca27f50e0"

  url "https://developer.samsung.com/watchfacestudio/file/#{version.csv.second}"
  name "Watch Face Studio"
  desc "Graphic authoring tool for creating watch faces for Wear OS"
  homepage "https://developer.samsung.com/WatchFaceStudio"

  livecheck do
    url "https://developer.samsung.com/watch-face-studio/download.html"
    regex(%r{href=.*?file/([a-z0-9]+(?:-[a-z0-9]+)+)".*?macOS\sv?(\d+(?:\.\d+)+)}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  pkg "WatchFaceStudio_#{version.csv.first}.pkg"

  uninstall pkgutil: "WatchFaceStudio"

  zap trash: [
    "~/Library/Application Support/watchfacestudio",
    "~/Library/Preferences/WatchFaceStudio.plist",
  ]
end
