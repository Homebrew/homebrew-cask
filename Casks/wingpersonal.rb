cask "wingpersonal" do
  version "7.2.5.0"
  sha256 "c763470e4bfc372909ca150d282c7aada80e557ee274926f1434f4154d22ef1d"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast "https://www.wingware.com/downloads/wing-personal"
  name "WingPersonal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  depends_on macos: ">= :sierra"

  app "WingPersonal.app"
end
