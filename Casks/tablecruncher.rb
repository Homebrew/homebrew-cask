cask "tablecruncher" do
  version "1.6.0.1"
  sha256 "897f9fabcabdd902343dad66e67ea2c68b911cf44d383e32adb94ea2908c87de"

  url "https://tablecruncher.com/download/Tablecruncher-#{version}.zip"
  name "Tablecruncher"
  desc "Lightweight CSV editor"
  homepage "https://tablecruncher.com"

  app "Tablecruncher.app"
end
