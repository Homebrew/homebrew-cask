cask "volley" do
  version "1.0.63"
  sha256 :no_check

  url "https://pieces.volley.app/downloads/Volley.dmg",
      verified: "pieces.volley.app/downloads/"
  name "Volley"
  desc "Asynchronous video messaging app"
  homepage "https://www.volleyapp.com/"

  livecheck do
    url "https://s3.amazonaws.com/pieces.volley.app/downloads/latest-mac.yml"
    strategy :electron_builder
  end

  app "Volley.app"
end
