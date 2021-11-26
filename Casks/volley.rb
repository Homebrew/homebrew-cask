cask "volley" do
  version "1.0.2"
  sha256 :no_check

  url "https://pieces.volley.app/downloads/Volley.dmg",
      verified: "pieces.volley.app/downloads/"
  name "Volley"
  desc "Marco Pollo like app built for quic asynchronous team communication"
  homepage "https://www.volleyapp.com/"

  app "Volley.app"
end
