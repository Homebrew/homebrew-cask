cask :v1 => 'wiznote' do
  version '2015-06-16'
  sha256 '73e139ff32476d9afa93d988c10686cc185f174f582ab1db0a9d6eb6dc545134'

  # wiz.cn is the official download host per the vendor homepage
  url "http://release.wiz.cn/wiznote-macos-#{version}.dmg"
  name 'WizNote'
  homepage 'http://www.wiznote.com/'
  license :gratis

  app 'WizNote.app'
end
