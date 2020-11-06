cask "wingpersonal" do
  version "7.2.6.0"
  sha256 "70fd91ca979131f0c4ba6389b1f7056a3d80ab8e71aa62d72da719136009728c"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast "https://www.wingware.com/downloads/wing-personal"
  name "WingPersonal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  depends_on macos: ">= :sierra"

  app "WingPersonal.app"
end
