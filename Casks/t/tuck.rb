cask "tuck" do
  version "1.0"
  sha256 "7e7822e3a7d7eb932f58e770aee31f778164784e151dbc36ab997be4107804ed"

  url "https://www.irradiatedsoftware.com/downloads/Tuck_#{version}.zip"
  name "Tuck"
  desc "Window manager"
  homepage "https://www.irradiatedsoftware.com/tuck/"

  livecheck do
    url "https://www.irradiatedsoftware.com/updates/profiles/tuck.php"
    strategy :sparkle, &:short_version
  end

  app "Tuck.app"

  zap trash: "~/Library/Preferences/com.irradiatedsoftware.Tuck.plist"

  caveats do
    requires_rosetta
  end
end
