cask "vu" do
  version "1.2,6,1523016199"
  sha256 "a51884117a8e33339429a93a84c70eb82db46dc50ebe827ab7b7c9a0c6ced313"

  url "https://dl.devmate.com/com.boriskarulin.vu/#{version.csv.second}/#{version.csv.third}/vu-#{version.csv.second}.dmg",
      verified: "dl.devmate.com/com.boriskarulin.vu/"
  name "vu"
  desc "Instagram client"
  homepage "https://datastills.com/vu/"

  deprecate! date: "2024-11-01", because: :unmaintained

  depends_on macos: ">= :sierra"

  app "vu.app"

  caveats do
    requires_rosetta
  end
end
