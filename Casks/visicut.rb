cask 'visicut' do
  version '1.8-92-gc695e590'
  sha256 '4102f0bac66255967e3ac36c3599fd0d74b2ba7376633776de39b957ce81caba'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end
