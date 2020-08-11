cask "wingpersonal" do
  version "7.2.4.0"
  sha256 "212f21aad8e93fd6ab9ce42af2cd34aac6ab19fd49208c6fea21ef28ebce0aff"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  appcast "https://www.wingware.com/downloads/wing-personal"
  name "WingPersonal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  depends_on macos: ">= :sierra"

  app "WingPersonal.app"
end
