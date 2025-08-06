cask "unnaturalscrollwheels" do
  version "1.3.0"
  sha256 "191c4b5a05aeb3b2bbf990b15f4cdeeeff79a4c2b9bab020f8b11d3681a3dbb0"

  url "https://github.com/ther0n/UnnaturalScrollWheels/releases/download/#{version}/UnnaturalScrollWheels-#{version}.dmg"
  name "UnnaturalScrollWheels"
  desc "Tool to invert scroll direction for physical scroll wheels"
  homepage "https://github.com/ther0n/UnnaturalScrollWheels"

  depends_on macos: ">= :high_sierra"

  app "UnnaturalScrollWheels.app"

  uninstall quit: "com.theron.UnnaturalScrollWheels"

  zap trash: [
    "~/Library/Application Scripts/com.theron.UnnaturalScrollWheels",
    "~/Library/Containers/com.theron.UnnaturalScrollWheels",
  ]
end
