cask "tablecruncher" do
  version "1.6.0.1"
  sha256 "897f9fabcabdd902343dad66e67ea2c68b911cf44d383e32adb94ea2908c87de"

  url "https://tablecruncher.com/download/Tablecruncher-#{version}.zip"
  name "Tablecruncher"
  desc "Lightweight CSV editor"
  homepage "https://tablecruncher.com/"

  livecheck do
    url "https://tablecruncher.com/download/"
    regex(/Tablecruncher-(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Tablecruncher.app"

  zap trash: [
    "~/Library/Preferences/com.tablecruncher",
    "~/Library/Preferences/com.tablecruncher.Tablecruncher.plist",
    "~/Library/Saved Application State/com.tablecruncher.Tablecruncher.savedState",
  ]
end
