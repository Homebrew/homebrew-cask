cask 'whichspace' do
  version '0.1.9'
  sha256 '4c1c0fb5f036cb1e11e2126ea5caaafb2ea9526523ed3a36a160793910529b57'

  url "https://github.com/gechr/WhichSpace/releases/download/v#{version}/WhichSpace.app.zip"
  appcast 'https://github.com/gechr/WhichSpace/releases.atom',
          checkpoint: '100d2a27e92d419f26342e7c2389388e0812a59640d21203db0c8c81a8aa9b82'
  name 'WhichSpace'
  homepage 'https://github.com/gechr/WhichSpace'

  depends_on macos: '> :yosemite'

  app 'WhichSpace.app'
end
