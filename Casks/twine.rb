cask :v1 => 'twine' do
  version '2.0.8'
  sha256 'b7c61e838343bdce86ce7a7bf3618376c23f0388ce4ce7f8209bf6fb5ac27d75'

  url "http://twinery.org/downloads/twine_#{version}_osx.zip"
  name 'Twine'
  homepage 'http://twinery.org/'
  license :gpl

  app 'Twine.app'
end
