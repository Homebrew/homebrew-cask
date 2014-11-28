cask :v1 => 'worksnaps-client' do
  version '1.1.20141010-2'
  sha256 'ca1949845c9f65ae3e0ae0302b89048d706622b07661c393af765af7a520a5e6'

  url "https://www.worksnaps.net/download/WSClient-mac-#{version}.dmg"
  homepage 'http://www.worksnaps.net/'
  license :unknown

  app 'Worksnaps Client.app'
end
