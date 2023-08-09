cask "unpkg" do
  version "4.8"
  sha256 "1b8318d2fb642397471221344836a967176089bce44e70a2b99f5cb4f60eee09"

  url "https://www.timdoug.com/unpkg/unpkg-#{version}.zip"
  name "unpkg"
  desc "Unarchiver for .pkg and .mpkg that unpacks all the files in a package"
  homepage "https://www.timdoug.com/unpkg/"

  livecheck do
    url :homepage
    regex(/href=.*?unpkg[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "unpkg #{version}/unpkg.app"
end
