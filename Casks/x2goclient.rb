cask 'x2goclient' do
  version '4.1.1.0'

  if MacOS.version <= :mavericks
    sha256 '459ac9363a32601b078c43586e0c5b6a42f3f6eb98947877ef7eacae8fc3181c'
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version}/x2goclient-#{version}.20171029_OSX_10_9.dmg"
  elsif MacOS.version <= :el_capitan
    sha256 'a852dbcd134a30f0d442001707982b7fc11c64d5fed5813feec20d06de274301'
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version}/x2goclient-#{version}.20171029.OSX_10_10.dmg"
  else
    sha256 'e6e2c4384218711d6b4480c8c9f8f44a726930a594f4c15431ecbd2092f77cb4'
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version}/x2goclient-#{version}.20171029.OSX_10_12.dmg"
  end

  name 'X2Go Client'
  homepage 'https://wiki.x2go.org/doku.php'

  depends_on cask: 'xquartz'

  app 'x2goclient.app'

  zap trash: '~/Library/Preferences/x2goclient.plist'
end
