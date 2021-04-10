cask "wingpersonal" do
  version "7.2.7.0"
  sha256 "772faf1b9238b8e376ac0dc56678c437cf147f0ef3dfb647a095b1ce367c8be4"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  name "WingPersonal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  livecheck do
    url "https://www.wingware.com/downloads/wing-personal"
    strategy :page_match
    regex(%r{href=.*?/wing-personal-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "WingPersonal.app"
end
