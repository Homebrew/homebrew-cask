cask "twist" do
  version "0.3.0"
  sha256 "50cd27e01059073c721f171a56b7b9635c622fff0f3f0590e3c877087f5e6404"

  url "https://downloads.twist.com/mac/Twist-#{version}.dmg"
  name "Twist"
  desc "Team communication and collaboration software"
  homepage "https://twist.com/"

  livecheck do
    url "https://twist.com/mac_app"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "Twist.app"
end
