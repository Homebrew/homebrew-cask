cask "vellum" do
  version "2.7.2"
  sha256 "e7622f5e12202f0a5f895687a1a2e8a62c94483c36530303ced3a8d097c5e071"

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
