cask "vcv-rack" do
  version "2.0.1"
  sha256 "a0c07c03a198f052851cdaaff20e3baf8b5cc5d4ccc493eacd59e6d754de0bb2"

  url "https://vcvrack.com/downloads/RackFree-#{version}-mac.pkg"
  name "VCV Rack"
  desc "Open-source virtual modular synthesizer"
  homepage "https://vcvrack.com/"

  livecheck do
    url "https://vcvrack.com/Rack.html"
    strategy :page_match
    regex(%r{href=.*?/RackFree-(\d+(?:\.\d+)*)-mac\.pkg}i)
  end
  
  pkg "Install RackFree-#{version}-mac.pkg"

  app "Rack.app"
end
