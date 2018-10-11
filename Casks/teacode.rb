cask 'teacode' do
  version '1.0'
  sha256 '09b2b9ac3df1e8b9f5351e98c3699c763359d5142ea4b8bcf159bb7e820b9bb6'

  url "https://www.apptorium.com/public/products/teacode/releases/TeaCode-#{version}.zip"
  appcast 'https://updates.devmate.com/com.apptorium.TeaCode-dm.xml'
  name 'TeaCode'
  homepage 'https://www.apptorium.com/teacode'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'TeaCode.app'
end
