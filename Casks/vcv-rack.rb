cask "vcv-rack" do
  version "1.1.6"
  sha256 "79078ca77dff41beab2247cadf22d1a9d4112b3981f8a4084923b75519664a50"

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.zip"
  appcast "https://vcvrack.com/Rack.html"
  name "VCV Rack"
  desc "Open-source virtual modular synthesizer"
  homepage "https://vcvrack.com/"

  app "Rack.app"
end
