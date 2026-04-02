cask "vitalsource-bookshelf" do
  version "11.3.1.3906"
  sha256 "cc8b8845ae483bd380807ddb61bc110e2c2d5425b2f40263a5b339f5867b6d9a"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{(version.patch == "0") ? version.major_minor : version.major_minor_patch}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg",
      verified: "downloads.vitalbook.com/vsti/bookshelf/"
  name "VitalSource Bookshelf"
  desc "Access etextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    url "https://support.vitalsource.com/api/v2/help_center/en-us/articles/360014107913"
    regex(/href=.*?VitalSource[._-]Bookshelf[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "VitalSource Bookshelf.app"

  zap trash: [
    "~/Library/Application Support/com.vitalsource.bookshelf",
    "~/Library/Logs/Vitalsource Bookshelf",
    "~/Library/Preferences/com.vitalsource.bookshelf.plist",
  ]
end
