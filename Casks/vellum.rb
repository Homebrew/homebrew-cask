cask "vellum" do
  version "2.7.3"
  sha256 "8073c92cf29a9eae23d118628acd365695ed7f05e88854d222f4874363c86ad8"

  # 180g.s3.amazonaws.com/downloads/ was verified as official when first introduced to the cask
  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.no_dots}00.zip"
  appcast "https://get.180g.co/updates/vellum/"
  name "Vellum"
  homepage "https://vellum.pub/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
  ]
end
