cask "watchfacestudio" do
  version "1.3.12,aac4d495-5ece-42ee-b80f-de38ff061809"
  sha256 "ed7146d1b569f13c3acc0322462cf7f213bb6cf1e485417e7d88a37c9c267602"

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
