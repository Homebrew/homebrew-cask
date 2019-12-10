cask 'tinypng4mac' do
  version '1.0.3'
  sha256 '723a9e0b63b69a5b3c0d20cbe2199ff5dea7ac06ae511ec827b6bb82cf5af112'

  url "https://github.com/kyleduo/TinyPNG4Mac/releases/download/v#{version}/TinyPNG4Mac_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/kyleduo/TinyPNG4Mac/releases.atom'
  name 'TinyPNG4Mac'
  homepage 'https://github.com/kyleduo/TinyPNG4Mac'

  app 'TinyPNG4Mac.app'
end
