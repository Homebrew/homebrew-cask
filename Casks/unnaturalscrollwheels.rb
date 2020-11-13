cask "unnaturalscrollwheels" do
  version "1.1.0"
  sha256 "87afed2eece015e1ebaa6857abcc2559e4dbbffda8b138ec2081366a0aa50441"

  url "https://github.com/ther0n/UnnaturalScrollWheels/releases/download/#{version}/UnnaturalScrollWheels-#{version}.dmg"
  appcast "https://github.com/ther0n/UnnaturalScrollWheels/releases.atom"
  name "UnnaturalScrollWheels"
  desc "Tool to invert scroll direction for physical scroll wheels"
  homepage "https://github.com/ther0n/UnnaturalScrollWheels"

  app "UnnaturalScrollWheels.app"

  uninstall quit: "com.theron.UnnaturalScrollWheels"

  zap trash: [
    "~/Library/Application Scripts/com.theron.UnnaturalScrollWheels",
    "~/Library/Containers/com.theron.UnnaturalScrollWheels",
  ]
end
