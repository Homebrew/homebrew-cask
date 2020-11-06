cask "unpkg" do
  version "4.6"
  sha256 "6949b648d5cd02138f9e7f505f1fb3541905d6016ed951daa71cb7250c3ace2e"

  # github.com/downloads/timdoug/unpkg/ was verified as official when first introduced to the cask
  url "https://www.timdoug.com/unpkg/unpkg-#{version}.zip"
  appcast "https://www.timdoug.com/unpkg/"
  name "unpkg"
  desc "Unarchiver for .pkg and .mpkg that unpacks all the files in a package"
  homepage "https://www.timdoug.com/unpkg/"

  app "unpkg #{version}/unpkg.app"
end
