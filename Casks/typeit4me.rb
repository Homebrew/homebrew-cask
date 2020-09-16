cask "typeit4me" do
  version "6.2.2b206"
  sha256 "0467ed7927246414fbc19db1fa970feb905ad35d71597a51c8b102f673ae16b6"

  url "https://ettoresoftware.com/download/TypeIt4Me#{version}.zip"
  appcast "https://ettoresoftware.com/download/TypeIt4MeAppcast.xml"
  name "TypeIt4Me"
  homepage "https://www.ettoresoftware.com/mac-apps/typeit4me/"

  auto_updates true

  app "TypeIt4Me.app"
end
