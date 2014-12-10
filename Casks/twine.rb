cask :v1 => 'twine' do
  version '1.4.1'
  sha256 '717e0f7849f8216a7bae68c66656cf0e3cd0496c8a9d95e3c61e175d56f010e4'

  url "http://twinery.org/downloads/twine_#{version}_osx.zip"
  homepage 'http://twinery.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Twine.app'
end
