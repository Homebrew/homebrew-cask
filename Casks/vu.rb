cask "vu" do
  version "1.2,6:1523016199"
  sha256 "a51884117a8e33339429a93a84c70eb82db46dc50ebe827ab7b7c9a0c6ced313"

  url "https://dl.devmate.com/com.boriskarulin.vu/#{version.after_comma.before_colon}/#{version.after_colon}/vu-#{version.after_comma.before_colon}.dmg",
      verified: "dl.devmate.com/com.boriskarulin.vu/"
  name "vu"
  homepage "https://datastills.com/vu/"

  livecheck do
    url "https://updates.devmate.com/com.boriskarulin.vu.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/(\d+)/vu-(\d+(?:\.\d+)*)\.dmg}i)
      "#{item.short_version},#{item.version}:#{match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "vu.app"
end
