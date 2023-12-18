cask "wjoy" do
  version "0.7.1"
  sha256 "98a9f825634b09b901ad979a6cdda241a04a1cbd7dcd14b4b17b0bebe3f40ee1"

  url "https://github.com/alxn1/wjoy/releases/download/#{version}/wjoy.#{version}.dmg"
  name "WJoy"
  desc "Nintendo wiimote driver"
  homepage "https://github.com/alxn1/wjoy"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Wjoy.app"
end
