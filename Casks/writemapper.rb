cask "writemapper" do
  version "2.10.0"
  sha256 "faa919450d0f92d1f6a93d94f51e3ff45a1c92b70c2a408773f299d6e15624a1"

  url "https://writemapper.com/static/app/mac/WriteMapper-#{version}.dmg"
  appcast "https://writemapper.com/static/app/mac/latest-mac.yml"
  name "WriteMapper"
  homepage "https://writemapper.com/"

  app "WriteMapper.app"
end
