cask "teacode" do
  version "1.0.1"
  sha256 "be53f32b0cb6edbe8eb84b2e0e9bd6ea8c822486267337f7556c43cd3267ae35"

  url "https://www.apptorium.com/public/products/teacode/releases/TeaCode-#{version}.zip"
  appcast "https://updates.devmate.com/com.apptorium.TeaCode-dm.xml"
  name "TeaCode"
  homepage "https://www.apptorium.com/teacode"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeaCode.app"
end
