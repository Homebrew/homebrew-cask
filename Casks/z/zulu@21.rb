cask "zulu@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.10,21.48.17"
  sha256 arm:   "821a3774902774c5676a420a7a8a0f143f1b3bfef9800d32813aec447678dfc9",
         intel: "3a918e0dc0e41d9a7e1fcd97fc33bcd0c32a343ca794deea34553c01c02aa24d"

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
