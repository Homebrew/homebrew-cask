cask "watchfacestudio" do
  version "1.3.13,2ba81234-16fb-42ce-bdae-e1be6bc228c0"
  sha256 "d5457e4eb591c9cdd99ee95ced58aebf58fed8286ae210d172b6ceb4d378f8ee"

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
