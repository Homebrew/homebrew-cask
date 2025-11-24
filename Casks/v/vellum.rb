cask "vellum" do
  version "4.0.1,40100"
  sha256 "75bb0d02cf0c39a6cabd7948cfbb1581862a4f10e2fb4bdce58028ad6a2a30a9"

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
