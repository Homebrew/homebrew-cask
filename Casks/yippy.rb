cask "yippy" do
  version "2.5.0"
  sha256 "39b59894324e9e4a986dc076d925a9449cf35edcf0e84fc7d57557d0c5e87318"

  url "https://github.com/mattDavo/Yippy/releases/download/#{version}/Yippy.zip",
      verified: "github.com/mattDavo/Yippy/"
  name "Yippy"
  desc "Open source clipboard manager"
  homepage "https://yippy.mattdavo.com/"

  app "Yippy.app"

  zap trash: "~/Library/Application Support/MatthewDavidson.Yippy"
end
