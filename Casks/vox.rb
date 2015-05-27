cask :v1 => 'vox' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  name 'VOX'
  appcast 'http://updates.devmate.com/com.coppertino.Vox.xml',
          :sha256 => '20c1ab602462b7fc0d5b4cbd555cacf127b69a07a737579598ebcbc0f5b21319'
  homepage 'http://coppertino.com/vox/osx/'
  license :freemium

  app 'VOX.app'
end
