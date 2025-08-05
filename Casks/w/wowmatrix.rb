cask "wowmatrix" do
  version "8.0.2.0"
  sha256 :no_check

  url "http://swupdate.wowmatrix.com/mac/WowMatrix.zip"
  name "WowMatrix"
  desc "WoW AddOn Installer and Updater"
  homepage "https://www.wowmatrix.com/"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2024-08-05", because: :unmaintained
  disable! date: "2025-08-05", because: :unmaintained

  app "WowMatrix.app"

  caveats do
    requires_rosetta
  end
end
