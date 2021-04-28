cask "toinane-colorpicker" do
  version "2.0.5"
  sha256 "6459d542b4a0786cb9a81e3bec824fe42c3dbdcff48874e7a02a52e143d4a9e8"

  url "https://github.com/toinane/colorpicker/releases/download/#{version}/Colorpicker-#{version}.dmg",
      verified: "github.com/toinane/colorpicker/"
  name "Colorpicker"
  desc "Get and save color codes"
  homepage "https://colorpicker.fr/"

  app "Colorpicker.app"

  zap trash: "~/Library/Application Support/Colorpicker"
end
