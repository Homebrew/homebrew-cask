cask "vellum" do
  version "4.2.2,42200"
  sha256 "c48545a2992c6078fb5b59ac32d3c8c7702086c9f858fc2adf653adaa530b238"

  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.csv.second}.zip"
  name "Vellum"
  desc "Ebook creation software"
  homepage "https://vellum.pub/"

  livecheck do
    url "https://get.180g.co/updates/vellum/"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Application Support/co.180g.Vellum",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.180g.vellum.sfl*",
    "~/Library/Caches/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
    "~/Library/HTTPStorages/co.180g.Vellum",
    "~/Library/Preferences/co.180g.Vellum.plist",
  ]
end
