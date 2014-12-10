cask :v1 => 'wiznote' do
  version '2.1.13'
  sha256 '5735502f06e93013f1350df89dd0423c1c250da798d7e5970d18a67034bb032f'

  url 'http://release.wiz.cn/wiznote-macos-2014-09-25.dmg'
  homepage 'http://www.wiznote.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'WizNote.app'
end
