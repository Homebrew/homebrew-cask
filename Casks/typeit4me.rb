cask "typeit4me" do
  version "6.3.3,244"
  sha256 "cc4440d858a85ef6d2c890f3eb7fccb6e0ecec796ad827fe84f7725c8741ab06"

  url "https://ettoresoftware.store/download/TypeIt4Me#{version.before_comma}b#{version.after_comma}.zip"
  name "TypeIt4Me"
  desc "Text expander"
  homepage "https://ettoresoftware.store/mac-apps/typeit4me/"

  livecheck do
    url "https://ettoresoftware.store/download/TypeIt4MeAppcastV2.xml"
    strategy :sparkle
  end

  auto_updates true

  app "TypeIt4Me#{version.before_comma}b#{version.after_comma}.app", target: "TypeIt4Me.app"
end
