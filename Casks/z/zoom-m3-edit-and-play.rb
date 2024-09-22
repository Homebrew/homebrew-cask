cask "zoom-m3-edit-and-play" do
  version "1.1.2,2850"
  sha256 "babd77d9864ac67233fcfb1f3324067fc455048dce529419f119a2803af9d448"

  url "https://zoomcorp.com/documents/#{version.csv.second}/M3_Edit__Play_Mac_v#{version.csv.first}_E.zip"
  name "ZOOM M3 Edit & Play"
  desc "Software for ZOOM M3 MicTrak"
  homepage "https://zoomcorp.com/en/us/software-product-page/software-sub-cat/m3-edit-and-play/"

  livecheck do
    url "https://zoomcorp.com/en/us/mictrak-recorders/mictrak-recorders/m3-mictrak/m3-support/"
    regex(%r{href=.*?/(\d+)/M3[._-]Edit[._-]+?Play[._-]Mac[._-]v?(\d+(?:\.\d+)+).*?\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :catalina"
  container nested: "M3_Edit_&_Play_Mac_v#{version.csv.first}_E/ZOOM M3 Edit & Play #{version.csv.first} Installer.dmg"

  app "ZOOM M3 Edit & Play.app"

  zap trash: "~/Library/Preferences/jp.co.zoom.M3EditPlay.plist"
end
