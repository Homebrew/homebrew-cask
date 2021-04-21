cask "vitalsource-bookshelf" do
  version "9.4.0.1304"
  sha256 "47f996046bd898afbc0c6ac3cc30403869fcfc3feefc03bdc0bae09af057e387"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg",
      verified: "downloads.vitalbook.com/"
  appcast "https://support.vitalsource.com/hc/en-us/articles/360014107913-Mac"
  name "VitalSource Bookshelf"
  homepage "https://www.vitalsource.com/bookshelf-features"

  depends_on macos: ">= :sierra"

  app "VitalSource Bookshelf.app"
end
