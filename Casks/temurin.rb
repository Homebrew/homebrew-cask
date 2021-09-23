cask "temurin" do
  version "17,35"
  sha256 "a45c33691f0508a95ff291c88713088e060376e7b4e9cac03d083225b68d8f78"

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK#{version.major}-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg",
      verified: "github.com/adoptium/"
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

  pkg "OpenJDK#{version.major}-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"
end
