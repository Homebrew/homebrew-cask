cask "vitalsource-bookshelf" do
  version "9.4.3.1330"
  sha256 "fe183fc2796906e15bdfa2902e195c83390321692ab5fa621a505f3e9fc1fc91"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor_patch}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg",
      verified: "downloads.vitalbook.com/"
  name "VitalSource Bookshelf"
  desc "Access eTextbooks"
  homepage "https://www.vitalsource.com/bookshelf-features"

  livecheck do
    url "https://support.vitalsource.com/hc/en-us/articles/360014107913-Mac"
    regex(/href=.*?VitalSource-Bookshelf[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "VitalSource Bookshelf.app"
end
