cask "zulu@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.9,21.46.19"
  sha256 arm:   "34ed690a5f66b17b29be9b2db21b3cba85532b33adedacab85a5780aab8754d2",
         intel: "c9be55089eb9cf055713e048bde97e7bc27848abc52e6f070017d6375a23d86d"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-ca-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/"

  livecheck do
    url "https://api.azul.com/metadata/v1/zulu/packages?java_version=#{version.major}&os=macos&arch=#{arch}&archive_type=dmg&java_package_type=jdk&javafx_bundled=false&latest=true&release_status=ga&availability_types=ca"
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

  zap trash: "~/Library/Saved Application State/com.azul.zulu.#{version.major}*.java.savedState"
end
