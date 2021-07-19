cask "typeface" do
  version "3.2.0,2900"
  sha256 "5e66efdad214c4fbe3cd5b7de0c87b58ae5d47a0edc9a4ce65b6d503a4c640de"

  url "https://dcdn.typefaceapp.com/Typeface-#{version.before_comma}-#{version.after_comma}/Typeface-#{version.before_comma}-#{version.after_comma}.dmg"
  name "Typeface"
  desc "Font manager application"
  homepage "https://typefaceapp.com/"

  livecheck do
    url "https://dcdn.typefaceapp.com/appcast.xml"
    strategy :sparkle
  end

  app "Typeface.app"
end
