cask :v1 => 'typed' do
  version :latest
  sha256 :no_check

  url 'http://realmacsoftware.com/redirects/typed/direct'
  name 'Typed'
  appcast 'http://updateinfo.devmate.com/com.realmacsoftware.typed/updates.xml',
          :sha256 => 'd1b7029476838fa90d608eeb2f58d0874ef00e3ce3250d78f4a0660bdccfd6d8'
  homepage 'https://realmacsoftware.com/typed/'
  license :commercial

  app 'Typed.app'

  depends_on :macos => '>= :mavericks'
end
