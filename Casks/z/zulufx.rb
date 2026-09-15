cask "zulufx" do
  arch arm: "aarch64", intel: "x64"

  version "26.0.2.1,26.32.203"
  sha256 arm:   "0de38519a7d51f90ba012663c30cc65e1f91ec8380cd7823c3f75b67f967c927",
         intel: "06555f7f35f67e3440a534307b7f8f4fe938f1e259e472e72c9e79b91fe6244f"

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

  # No zap stanza required
end
