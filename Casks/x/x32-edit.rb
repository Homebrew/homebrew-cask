cask "x32-edit" do
  version "4.3"
  sha256 "ed200bdd08a7fbbf8146f18f4bc95011a814d7a283f04a36040b11e4445da13b"

  url "https://mediadl.musictribe.com/download/software/behringer/X32/X32-Edit_MAC_#{version}.zip",
      verified: "musictribe.com/"
  name "x32-edit"
  desc "Remote control for Behringer X32 audio consoles"
  homepage "https://www.behringer.com/product.html?modelCode=0603-ACE"

  livecheck do
    url "https://www.behringer.com/.rest/musictribe/v1/products/media-library?brandName=behringer&modelCode=0603-ACE"
    regex(/X32[._-]Edit[._-]MAC[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :big_sur"

  app "X32-Edit_#{version}/X32-Edit.app"

  zap trash: "~/Library/.X32-Edit"
end
