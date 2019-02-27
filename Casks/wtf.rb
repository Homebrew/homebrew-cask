cask 'wtf' do
  version '0.5.0'
  sha256 '9dee3179aaef56d5981ce7d9cf86ed9978ee7605fbc13b2d62eef0b088d148c3'

  # github.com/wtfutil/wtf was verified as official when first introduced to the cask
  url "https://github.com/wtfutil/wtf/releases/download/#{version}/wtf_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/wtfutil/wtf/releases.atom'
  name 'WTF'
  homepage 'https://wtfutil.com/'

  binary "wtf_#{version}_darwin_amd64/wtf"
end
