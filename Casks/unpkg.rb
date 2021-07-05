cask "unpkg" do
  version "4.7"
  sha256 "fee4f5ee286573f00a46dbe0e372d671ba82ce270ba4104cac9743b2e528d5b1"

  url "https://www.timdoug.com/unpkg/unpkg-#{version}.zip"
  appcast "https://www.timdoug.com/unpkg/"
  name "unpkg"
  desc "Unarchiver for .pkg and .mpkg that unpacks all the files in a package"
  homepage "https://www.timdoug.com/unpkg/"

  app "unpkg #{version}/unpkg.app"
end
