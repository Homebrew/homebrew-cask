cask :v1 => 'zeplin' do
  version :latest
  sha256 :no_check

  url 'https://zpl.io/download'
  name 'zeplin'
  homepage 'https://zeplin.io'
  license :gratis

  app 'zeplin.app'
end
