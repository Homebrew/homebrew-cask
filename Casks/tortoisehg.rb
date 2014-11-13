cask :v1 => 'tortoisehg' do
  version '3.1.0'
  sha256 '5e8d1b70b9d3089977fb5a731c93e2e6c8ae7a089f908eb51d34c65ae599f45c'

  url "https://bitbucket.org/tortoisehg/files/downloads/tortoisehg-#{version}-mac-x64.zip"
  homepage 'http://tortoisehg.bitbucket.org/'
  license :oss

  app 'TortoiseHg.app'
end
