cask 'timeme' do
  version '0.0.1'
  sha256 '56598747ae0f941c970f515ec8a4f24a8cebd00f371ab63467c35147f3ba779a'

  url 'https://github.com/0DivTag/timeme/releases/download/v0.0.1-beta.1/Timeme-v0.0.1-beta.1.dmg'
  appcast 'https://github.com/0DivTag/timeme/releases.atom'
  name 'Timeme - Time Tracker'
  homepage 'https://github.com/0DivTag/timeme'

  app 'Timeme.app'
end
