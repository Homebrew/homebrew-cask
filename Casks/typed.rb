cask :v1 => 'typed' do
  version :latest
  sha256 :no_check

  url 'http://realmacsoftware.com/redirects/typed/direct'
  name 'Typed'
  appcast 'http://updateinfo.devmate.com/com.realmacsoftware.typed/updates.xml',
          :sha256 => 'fe5e5b84d159db645ddde52d21b8eebd5bc402fb7b321be305a675ccd0a69898'
  homepage 'https://realmacsoftware.com/typed/'
  license :commercial

  app 'Typed.app'

  depends_on :macos => '>= :mavericks'
end
