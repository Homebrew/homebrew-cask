cask "typeface" do
  version "3.0.1,2785"
  sha256 "b33848b18c531e877410b2e1e6ad4e8d6a9bca4e58419e30431a425be128c96e"

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
