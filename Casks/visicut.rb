cask 'visicut' do
  version '1.8-90-ga030e4e8'
  sha256 '6e95152d946101a3afe9c442c6ec24dc277c39eaffc1ff07fe94d1870f0138c9'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end
