class Tunnelbear < Cask
  version '2.4.2'
  sha256 'ad53bff32098e6871b3c3416b632c634672500b415a54d5afbbe7ea4f605d33d'

  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => 'f6d255572d045cfb43781edfdd68f4b1e48585ad0929d706c68300aca2ce7b2a'
  homepage 'https://www.tunnelbear.com/'
  license :unknown

  app 'TunnelBear.app'
end
