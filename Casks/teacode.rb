cask "teacode" do
  version "1.1"
  sha256 "a972f075b059b98c84d00fd591ac479b9298b47cc995f131f7ee60687fd53b84"

  url "https://www.apptorium.com/public/products/teacode/releases/TeaCode-#{version}.zip"
  name "TeaCode"
  desc "Text expanding app for developers"
  homepage "https://www.apptorium.com/teacode"

  livecheck do
    url "https://www.apptorium.com/teacode/trial"
    regex(/href=.*?TeaCode[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeaCode.app"

  zap trash: "~/Library/Preferences/com.apptorium.TeaCode-dm.plist"
end
