cask "tnefs-enough" do
  version "3.8"
  sha256 "9b067dc9f8397f3128b6b35b56bca93ce79f0daf677d7c786ae85f9050a12909"

  url "https://www.joshjacob.com/mac-development/TNEF#{version}.dmg"
  name "TNEF's Enough"
  desc "Read and extract files from Microsoft TNEF files"
  homepage "https://www.joshjacob.com/mac-development/tnef.php"

  livecheck do
    url :homepage
    regex(%r{href=.*?/TNEF(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "TNEF's Enough.app"
end
