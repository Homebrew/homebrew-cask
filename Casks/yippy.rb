cask "yippy" do
  version "2.6.0"
  sha256 "6beb1020993074114941732b8c0db911776d1f66752ddbfb33118eb26a74672b"

  url "https://github.com/mattDavo/Yippy/releases/download/#{version}/Yippy.zip",
      verified: "github.com/mattDavo/Yippy/"
  name "Yippy"
  desc "Open source clipboard manager"
  homepage "https://yippy.mattdavo.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Yippy.app"

  zap trash: "~/Library/Application Support/MatthewDavidson.Yippy"
end
