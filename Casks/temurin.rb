cask "temurin" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.1,12"

  url "https://github.com/adoptium/temurin#{version.csv[0].major}-binaries/releases/download/jdk-#{version.csv[0]}%2B#{version.csv[1]}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv[0]}_#{version.csv[1].major}.pkg",
      verified: "github.com/adoptium/"
  if Hardware::CPU.intel?
    sha256 "6318bac0268115f5740abc0113026356c3d784169ef9c5c94df2c3e3744505de"
  else
    sha256 "918b8d7796bf8761369a4b2d5c8c518e83eacd96347f6dc4bdd03a4792de024c"
  end

  name "Eclipse Temurin Java Development Kit"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/info/release_versions?release_type=ga&architecture=x64&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    strategy :page_match do |page|
      JSON.parse(page)["versions"].map do |version|
        match = version["openjdk_version"].match(/^(\d+(?:\.\d+)*)\+(\d+(?:\.\d+)*)$/i)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end.compact
    end
  end

  pkg "OpenJDK#{version.csv[0].major}U-jdk_#{arch}_mac_hotspot_#{version.csv[0]}_#{version.csv[1].major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.csv[0].major}.jdk"
end
