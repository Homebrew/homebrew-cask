cask "trava-openjdk-dcevm" do
  version "11.0.9+2"
  sha256 "064c3e1f94794fde86a457e822fe42ef779d417dd523dd39534cff032d4d1bde"

  url "https://github.com/TravaOpenJDK/trava-jdk-#{version.major}-dcevm/releases/download/dcevm-#{version}/java#{version.major}-openjdk-dcevm-osx.tar.gz"
  appcast "https://github.com/TravaOpenJDK/trava-jdk-#{version.major}-dcevm/releases.atom"
  name "TravaOpenJDK DCEVM"
  desc "Version of Java with unlimited runtime class and resource redefinition"
  homepage "https://github.com/TravaOpenJDK/trava-jdk-#{version.major}-dcevm"

  artifact "dcevm-#{version}", target: "/Library/Java/JavaVirtualMachines/trava-openjdk-dcevm-#{version.major}.jdk"
end
