cask 'wingide' do
  version '6.1.1-1'
  sha256 '932f14f0cc5dbbc81a26aa1b6ce08a152c05bae0a034f2f39bbe3384223ca00d'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'https://www.wingware.com/'

  app 'WingIDE.app'
end
