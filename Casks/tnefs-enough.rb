cask "tnefs-enough" do
  version "3.8"
  sha256 "9b067dc9f8397f3128b6b35b56bca93ce79f0daf677d7c786ae85f9050a12909"

  url "https://www.joshjacob.com/mac-development/TNEF#{version}.dmg"
  appcast "https://www.joshjacob.com/mac-development/tnef.php"
  name "TNEF's Enough"
  desc "Read and extract files from Microsoft TNEF files"
  homepage "https://www.joshjacob.com/mac-development/tnef.php"

  app "TNEF's Enough.app"
end
