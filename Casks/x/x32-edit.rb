cask "x32-edit" do
  version "4.4,JPHHRu2rXU2ZE4CkKSvUYw,my76TnWGkEuitQykoSs5mA"
  sha256 "d6054bc6f09230429b926d0cfcdcdb8da085d4e28469034716a01785323efc8d"

  url "https://cdn.mediavalet.com/aunsw/musictribe/#{version.csv.second}/#{version.csv.third}/Original/X32-Edit_MAC_#{version.csv.first}.zip",
      verified: "mediavalet.com/aunsw/musictribe/"
  name "X32 Edit"
  desc "Remote control for Behringer X32 audio consoles"
  homepage "https://www.behringer.com/product.html?modelCode=0603-ACE"

  livecheck do
    url "https://www.behringer.com/.rest/musictribe/v1/products/media-library?brandName=behringer&modelCode=0603-ACE"
    regex(%r{([^/]+)/([^/]+)/Original/X32[._-]Edit[._-]MAC[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :json do |json, regex|
      json.filter_map do |category|
        next if category["title"] != "Software"

        category["list"]&.map do |item|
          next unless item["title"]&.match?(/X32 Edit \(MAC\)/i)

          match = item["url"]&.match(regex)
          next if match.blank?

          "#{match[3]},#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  depends_on macos: ">= :big_sur"

  app "X32-Edit.app"

  zap trash: "~/Library/.X32-Edit"
end
