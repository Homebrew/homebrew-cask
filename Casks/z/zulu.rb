cask "zulu" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.1,21.30.15"
  sha256 arm:   "92d65ed61bf6c0bea0f9c44a6dd538da8a6c620a78f517c194913d1338fc39e7",
         intel: "f8f46bb00cfb8cecddcf71e10c77a577c9e9843a1e13a35ff05dbeec6f29788f"

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
