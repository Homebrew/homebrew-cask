cask 'x2goclient' do
  if MacOS.version <= :snow_leopard
    version '4.1.0.0,20170222'
    sha256 '8fbb806167461af5cfc15b5662a6a6ab5a4459c7f3c8efc61087ade80f919a4c'
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version.before_comma}/x2goclient-#{version.before_comma}-#{version.after_comma}_OSX_10_6.dmg"
  elsif MacOS.version <= :mavericks
    version '4.1.2.1,20180717'
    sha256 '1ea62a236a29ba5c6589552f42849d76b2d91ff480714d48eb8f1e494f23127c'
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version.before_comma}/x2goclient-#{version.before_comma}.#{version.after_comma}.OSX_10_9.dmg"
  elsif MacOS.version <= :el_capitan
    version '4.1.2.1,20180626'
    sha256 '6dd2e66f1921ab2964a9c2b2cda512d7f5b40fd2e3b57634d3da9b1e1a8afd15'
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version.before_comma}/x2goclient-#{version.before_comma}.#{version.after_comma}.OSX_10_11.dmg"
  else
    version '4.1.2.1,20180626'
    sha256 '749f5d8da20b4798db1ec47c4c7d6f09cd929a56ead950a71a77fe2207af9ef8'
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version.before_comma}/x2goclient-#{version.before_comma}.#{version.after_comma}.OSX_10_13.dmg"
  end

  name 'X2Go Client'
  homepage 'https://wiki.x2go.org/doku.php'

  depends_on x11: true

  app 'x2goclient.app'

  zap trash: '~/Library/Preferences/x2goclient.plist'
end
