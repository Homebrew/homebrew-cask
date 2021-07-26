cask "vitalsource-bookshelf" do
  version "10.0.0.1365"
  sha256 "c21310b8614c892b074afc107f3eb9f287089970df3c2f4799b3459e47732097"

  url "https://downloads.vitalbook.com/vsti/bookshelf/#{version.major_minor}/mac/bookshelf/VitalSource-Bookshelf_#{version}.dmg"
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
