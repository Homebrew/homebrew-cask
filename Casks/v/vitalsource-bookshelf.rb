cask "vitalsource-bookshelf" do
  version "11.4.1.4053"
  sha256 "4caedecd7641b497eba313579fed36253ca77dc726cd8da610f8bdd4a0d15905"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{(version.patch == "0") ? version.major_minor : version.major_minor_patch}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg"
  name "VitalSource Bookshelf"
  desc "Access etextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    url "https://support.vitalsource.com/api/v2/help_center/en-us/articles/360014107913"
    regex(/href=.*?VitalSource[._-]Bookshelf[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :big_sur

  app "VitalSource Bookshelf.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitalsource.bookshelf.sfl*",
    "~/Library/Application Support/com.vitalsource.bookshelf",
    "~/Library/HTTPStorages/com.vitalsource.bookshelf",
    "~/Library/Logs/Vitalsource Bookshelf",
    "~/Library/Preferences/com.vitalsource.bookshelf.plist",
  ]
end
