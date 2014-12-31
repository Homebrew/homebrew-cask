cask :v1 => 'youll-never-take-me-alive' do
  version '0.9.9'
  sha256 'e055e96ed1816b30b420533af8f9de90da088b339d51aa99a5c20c636e8ba9c8'

  url "https://github.com/iSECPartners/yontma-mac/releases/download/#{version}/yontma-#{version}.dmg"
  homepage 'https://github.com/iSECPartners/yontma-mac'
  license :oss

  app 'You\'ll Never Take Me Alive!.app'
end
