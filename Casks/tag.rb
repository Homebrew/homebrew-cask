cask "tag" do
  version "1.0.5,017"
  sha256 "3b3b21909dc00d4ff87a501c6451fb14e99ef1c10bea64d69ace5cfaa5bfe1a4"

  url "https://feisty-dog.s3.amazonaws.com/versions/binaries/000/000/#{version.csv.second}/Tag-#{version.csv.first}.zip",
      verified: "feisty-dog.s3.amazonaws.com/"
  name "Tag"
  desc "Music tag editor"
  homepage "https://www.feisty-dog.com/tag/"

  livecheck do
    url "https://www.feisty-dog.com/panel/updates/Tag"
    regex(%r{(\d+)/Tag[._-](\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "Tag.app"

  zap trash: "~/Library/Preferences/com.feisty-dog.Tag.plist"
end
