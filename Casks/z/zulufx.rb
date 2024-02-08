cask "zulufx" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.2,21.32.17"
  sha256 arm:   "7ca7d35febd69f57ca8c6881672bda6b51c96e4b960fbed89f3d5ccc7828d5fa",
         intel: "7cf6e35c658703d500042f98e9a8a0f4e4c8b6a9f4c12f0bbc684b12ecc8ed94"

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

  depends_on macos: ">= :mojave"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  # No zap stanza required
end
