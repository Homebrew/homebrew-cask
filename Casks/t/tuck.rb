cask "tuck" do
  version "1.0"
  sha256 "7e7822e3a7d7eb932f58e770aee31f778164784e151dbc36ab997be4107804ed"

  url "https://www.irradiatedsoftware.com/downloads/Tuck_#{version}.zip"
  name "Tuck"
  desc "Window manager"
  homepage "https://www.irradiatedsoftware.com/tuck/"

  deprecate! date: "2025-03-31", because: :unmaintained

  app "Tuck.app"

  zap trash: "~/Library/Preferences/com.irradiatedsoftware.Tuck.plist"

  caveats do
    requires_rosetta
  end
end
