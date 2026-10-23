cask "zulu@8" do
  arch arm: "aarch64", intel: "x64"

  version "8.0.512,8.98.0.107"
  sha256 arm:   "0b49c1a648bccd00ffddc3e1da251b901f5c34a9862bd7a5ad8aaa8d5a41df24",
         intel: "e0b20a11b96f95c88af0e4e69c82d4a7be52df439a03e6d5291c54aa6c77f83c"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-ca-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/"
  name "Azul Zulu Java 8 Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/"

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

  depends_on :macos

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  zap trash: "~/Library/Saved Application State/com.azul.zulu.#{version.major}*.java.savedState"
end
