cask "yate" do
  version "6.1"
  sha256 "3b54fe0344f4ecab7165d0b274c44bc59a73bf1c4f236328461a8a622cf6650f"

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  appcast "https://2manyrobots.com/Updates/Yate/appcast.xml"
  name "Yate"
  homepage "https://2manyrobots.com/yate/"

  auto_updates true

  app "Yate.app"
end
