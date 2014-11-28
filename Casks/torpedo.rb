cask :v1 => 'torpedo' do
  version :latest
  sha256 :no_check

  url 'https://usetorpedo.com/app/mac/download'
  homepage 'https://usetorpedo.com'
  license :unknown

  app 'Torpedo.app'
end
