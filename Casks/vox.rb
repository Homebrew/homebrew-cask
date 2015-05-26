cask :v1 => 'vox' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  name 'VOX'
  homepage 'http://coppertino.com/vox/osx/'
  license :freemium

  app 'VOX.app'
end
