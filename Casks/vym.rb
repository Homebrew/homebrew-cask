cask "vym" do
  version "2.8.8"
  sha256 "17587f3ad5550795f6224d09dd1bff659cb525ba77f6482b2d35138a16da1e80"

  url "https://downloads.sourceforge.net/vym/osx11-vym-#{version}-by%20shemeshg.zip"
  name "VYM (View Your Mind)"
  desc "Generate and manipulate maps which show your thoughts"
  homepage "https://sourceforge.net/projects/vym/"

  app "vym.app"

  zap trash: "~/Library/Preferences/com.insilmaril.vym.plist"
end
