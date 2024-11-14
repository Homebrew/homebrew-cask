cask "watchfacestudio" do
  version "1.7.13,1ee17ed8-231f-4b46-b857-f4c68a2dd4c8"
  sha256 "9438ad3b05a1cd5b602187e07dee46bc8461fbce88334296b7ccd1c3f6ddb415"

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
