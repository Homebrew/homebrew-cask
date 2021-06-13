cask "yippy" do
  version "2.7.0"
  sha256 "3d00f116ceedf3ceb0fd6b6b490f83e6399333d0b8cd546fd564897916ce07bf"

  url "https://github.com/mattDavo/Yippy/releases/download/#{version}/Yippy.zip",
      verified: "github.com/mattDavo/Yippy/"
  name "Yippy"
  desc "Open source clipboard manager"
  homepage "https://yippy.mattdavo.com/"

  app "Yippy.app"

  zap trash: "~/Library/Application Support/MatthewDavidson.Yippy"
end
