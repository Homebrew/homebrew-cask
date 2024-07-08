cask "writemapper" do
  version "2.10.0"
  sha256 "faa919450d0f92d1f6a93d94f51e3ff45a1c92b70c2a408773f299d6e15624a1"

  url "https://writemapper.com/static/app/mac/WriteMapper-#{version}.dmg"
  name "WriteMapper"
  desc "Writing tool that helps produce text documents using mind maps"
  homepage "https://writemapper.com/"

  livecheck do
    url "https://writemapper.com/static/app/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "WriteMapper.app"

  caveats do
    requires_rosetta
  end
end
