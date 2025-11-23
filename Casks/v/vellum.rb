cask "vellum" do
  version "4.0,40000"
  sha256 "a9b9b25927306150beabbd9de5bc8339bf68c24704f9bda2ec5156d31901c0a6"

  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.csv.second}.zip",
      verified: "180g.s3.amazonaws.com/downloads/"
  name "Vellum"
  desc "Ebook creation software"
  homepage "https://vellum.pub/"

  livecheck do
    url "https://get.180g.co/updates/vellum/"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
  ]
end
