cask "wingpersonal" do
  version "7.2.7.0"
  sha256 "772faf1b9238b8e376ac0dc56678c437cf147f0ef3dfb647a095b1ce367c8be4"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast "https://www.wingware.com/downloads/wing-personal"
  name "WingPersonal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  depends_on macos: ">= :sierra"

  app "WingPersonal.app"
end
