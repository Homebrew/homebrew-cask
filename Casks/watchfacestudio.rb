cask "watchfacestudio" do
  version "1.4.20,2ea3f74a-9330-4572-a720-2abf98e551a1"
  sha256 "3a793b0ae49018f18a85ee57e353b4e5c261d46891b5c120aeff1cfd6e421c39"

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
