cask "zulu@25" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.1,25.30.17"
  sha256 arm:   "8cf7c5478cb68313053155bad79aa1a2295d10a344d197f1e9486cdf2ddcdab8",
         intel: "ae99fc86273f9966bf9363820c68655ab8cb150ae850a598f13c369c56c87f0c"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-ca-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/"

  livecheck do
    url "https://api.azul.com/metadata/v1/zulu/packages?os=macos&arch=#{arch}&archive_type=dmg&java_package_type=jdk&javafx_bundled=false&latest=true&release_status=ga&availability_types=ca"
    regex(/zulu(\d+(?:[._]\d+)*)-ca-jdk(\d+(?:\.\d+)*)-macosx_#{arch}\.dmg/i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  # No zap stanza required
end
