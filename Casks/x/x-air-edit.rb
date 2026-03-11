cask "x-air-edit" do
  version "1.8.1,pasxX2fZM0ia-1m2Ag3Yjg,Ur4E_DBb10WZIMoa_W9OVQ"
  sha256 "30cf6ada86da5b90fb3115b39b4c8983829e9695a16258aeca5c2656bdc1d2d3"

  url "https://cdn.mediavalet.com/aunsw/musictribe/#{version.csv.second}/#{version.csv.third}/Original/X-AIR-Edit_MAC_#{version.csv.first}.zip",
      verified: "mediavalet.com/aunsw/musictribe/"
  name "x-air-edit"
  desc "Remote control for the Behringer X AIR series mixers"
  homepage "https://www.behringer.com/series.html?category=R-BEHRINGER-XAIRSERIES"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://www.behringer.com/.rest/musictribe/v1/products/media-library?brandName=behringer&modelCode=0605-AAD"
    regex(%r{([^/]+)/([^/]+)/Original/X[._-]AIR[._-]Edit[._-]MAC[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :json do |json, regex|
      json.filter_map do |category|
        next if category["title"] != "Software"

        category["list"]&.map do |item|
          next unless item["title"]&.match?(/X-AIR EDIT Mac/i)

          match = item["url"]&.match(regex)
          next if match.blank?

          "#{match[3]},#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  depends_on macos: ">= :high_sierra"

  app "X-AIR-Edit.app"

  zap trash: "~/Library/.X-Air-Edit"
end
