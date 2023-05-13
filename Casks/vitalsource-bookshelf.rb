cask "vitalsource-bookshelf" do
  version "10.3.2.2230"
  sha256 "0e9c4dfdba71a56c8f737e64c74c90e7ff23a8346d70121f03c24dbd011423a7"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor_patch}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg",
      verified: "downloads.vitalbook.com/vsti/bookshelf/"
  name "VitalSource Bookshelf"
  desc "Access etextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :mojave"

  app "VitalSource Bookshelf.app"

  zap trash: [
    "~/Library/Application Support/com.vitalsource.bookshelf",
    "~/Library/Logs/Vitalsource Bookshelf",
    "~/Library/Preferences/com.vitalsource.bookshelf.plist",
  ]
end
