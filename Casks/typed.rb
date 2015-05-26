cask :v1 => 'typed' do
  version :latest
  sha256 :no_check

  url 'http://realmacsoftware.com/redirects/typed/direct'
  name 'Typed'
  homepage 'http://realmacsoftware.com/typed/'
  license :commercial

  app 'Typed.app'

  depends_on :macos => '>= :mavericks'
end
