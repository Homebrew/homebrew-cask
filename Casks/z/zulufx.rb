cask "zulufx" do
  arch arm: "aarch64", intel: "x64"

  version "27.0.1.0.3,27.30.109"
  sha256 arm:   "6a181889ed3ad81e669664c55717ddcdbdb3591957ad7cc312871ff0e4b8bacf",
         intel: "88750e816f9236442ca41f6e0fbae9802755a285071958455f4855d916710ca5"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-ca-fx-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/"
  name "ZuluFX"
  desc "Azul ZuluFX Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/"

  livecheck do
    url "https://api.azul.com/metadata/v1/zulu/packages?os=macos&arch=#{arch}&archive_type=dmg&java_package_type=jdk&javafx_bundled=true&latest=true&release_status=ga&availability_types=ca"
    regex(/zulu(\d+(?:[._]\d+)*)-ca-fx-jdk(\d+(?:\.\d+)*)-macosx_#{arch}\.dmg/i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on :macos

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  zap :not_required
end
