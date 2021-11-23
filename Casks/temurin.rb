cask "temurin" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.1,12"

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg",
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
    url :url
    strategy :git do |tags|
      tags.map do |tag|
        match = tag.match(/^jdk-(\d+(?:\.\d+)*)\+(\d+(?:\.\d+)*)$/i)
        "#{match[1]},#{match[2]}" if match
      end.compact
    end
  end

  pkg "OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"
end
