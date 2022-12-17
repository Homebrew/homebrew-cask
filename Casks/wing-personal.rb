cask "wing-personal" do
  version "9.0.1.0"
  sha256 "f144d29b68bfef376f7de3dee8738a4f51558abed06060a77e6edb756b3d4ba6"

  url "https://wingware.com/pub/wing-personal/#{version}/wing-personal-#{version}.dmg"
  name "Wing Personal"
  desc "Free Python IDE designed for students and hobbyists"
  homepage "https://www.wingware.com/"

  livecheck do
    url "https://wingware.com/downloads/wing-personal"
    regex(%r{href=.*?/pub/wing-personal/v?(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :catalina"

  app "Wing Personal.app"
end
