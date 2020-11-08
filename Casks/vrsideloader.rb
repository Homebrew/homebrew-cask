cask "vrsideloader" do
  version "1.1.4"
  sha256 "4f07c4cedfb0b1336097394ee774b93487020eb02a171df7d7eadc53a471f563"

  # d2v9t1sopzxfck.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d2v9t1sopzxfck.cloudfront.net/files/VRsideloader-#{version}.dmg"
  name "VRsideloader"
  desc "Oculus sideloading tool"
  homepage "https://headjack.io/tutorial/sideload-install-app-apk-oculus-go-quest#tool"

  app "vrsideloader.app"

  zap trash: [
    "~/Library/Application Support/VRsideloader",
    "~/Library/Preferences/io.headjack.vrsideloader.plist",
  ]
end
