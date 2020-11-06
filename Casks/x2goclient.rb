cask "x2goclient" do
  version "4.1.2.2,20200213"

  if MacOS.version <= :el_capitan
    sha256 "7ad7c500fd61f23061c1ec6977f82e9cfa69b7edd0b01f7c97d0f3f1f527cff4"
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version.before_comma}/x2goclient-#{version.before_comma}.#{version.after_comma}.OSX_10_11.dmg"
  else
    sha256 "f41c1a20cc5d6e420a4800954aa18f7b86ed52f4300e187990aa78451be5225a"
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version.before_comma}/x2goclient-#{version.before_comma}.#{version.after_comma}.OSX_10_13.dmg"
  end

  name "X2Go Client"
  homepage "https://wiki.x2go.org/doku.php"

  depends_on x11: true

  app "x2goclient.app"

  zap trash: [
    "~/.x2go",
    "~/.x2goclient",
    "~/Library/Application Support/CrashReporter/x2goclient_*.plist",
    "~/Library/Preferences/x2goclient.plist",
  ]
end
