cask "zulufx" do
  arch arm: "aarch64", intel: "x64"

  version "27.0.0,27.28.103"
  sha256 arm:   "907c5778efdc5878230eb245216821095ed1a2424a4c486ba861178e857321f1",
         intel: "2540c891c361c8c5eb10a8b4c83f244beb951408e8fe1d146ebd851e7c02fb19"

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
