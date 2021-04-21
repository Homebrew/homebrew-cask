cask "typeit4me" do
  version "6.3.2,239"
  sha256 "5aeda373a3d4593077e5b86fd958140a6a252f484600ed5d7e1850046df9b77c"

  url "https://ettoresoftware.store/download/TypeIt4Me#{version.before_comma}b#{version.after_comma}.zip"
  name "TypeIt4Me"
  homepage "https://ettoresoftware.store/mac-apps/typeit4me/"

  livecheck do
    url "https://ettoresoftware.store/download/TypeIt4MeAppcastV2.xml"
    strategy :sparkle
  end

  auto_updates true

  app "TypeIt4Meb#{version.after_comma}notarised.app", target: "TypeIt4Me.app"
end
