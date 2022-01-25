cask "xtorrent" do
  version "2.1,171"
  sha256 "26ea235dcb827c6e58ab3409bec83396e86704d742d517e527016ecd44672379"

  url "http://www.xtorrent.com/Xtorrent#{version.csv.first}(v#{version.csv.second}).dmg"
  name "Xtorrent"
  desc "Torrent client"
  homepage "http://www.xtorrent.com/"

  livecheck do
    url "http://www.xtorrent.com/download.php"
    strategy :page_match do |page|
      match = page.match(/Xtorrent(\d+(?:\.\d+)*)\(v?(\d+(?:\.\d+)*)\)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Xtorrent.app"
end
