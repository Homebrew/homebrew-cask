cask "x32-edit" do
  version "4.3"
  sha256 "ed200bdd08a7fbbf8146f18f4bc95011a814d7a283f04a36040b11e4445da13b"

  url "https://mediadl.musictribe.com/download/software/behringer/X32/X32-Edit_MAC_#{version}.zip",
      verified: "musictribe.com/"
  name "x32-edit"
  desc "Remote control for the X32 console"
  homepage "https://www.behringer.com/product.html?modelCode=0603-ACE"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :big_sur"

  app "X32-Edit_#{version}/X32-Edit.app"

  zap trash: "~/Library/.X32-Edit"
end
