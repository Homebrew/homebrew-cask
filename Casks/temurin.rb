cask "temurin" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17,35"

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK#{version.major}-jdk_#{arch}_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg",
      verified: "github.com/adoptium/"
  if Hardware::CPU.intel?
    sha256 "a45c33691f0508a95ff291c88713088e060376e7b4e9cac03d083225b68d8f78"
  else
    sha256 "b0f779a7acf252a0838d9b4a423726d80cd6930713cfc517d2296fa36e4c95d4"
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

  pkg "OpenJDK#{version.major}-jdk_#{arch}_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"
end
