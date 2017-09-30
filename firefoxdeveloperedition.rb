cask 'firefoxdeveloperedition' do
  version '57.0b3'

  language 'cs' do
    sha256 '6b3aa3ab0f2bf56e82f95559bf0f8ebd68e3094a084fdc34d544dcc3a02f7fe3'
    'cs'
  end

  language 'de' do
    sha256 '7138612d50d55806dede7de55dedeae5669afaa51bed0826d789262fc1a4980a'
    'de'
  end

  language 'en', default: true do
    sha256 'f7e92f31e2eea01baf145bd1cf263d73831bfc40b15e5fc89de36ef8634ab728'
    'en-US'
  end

  language 'ja' do
    sha256 '5a55e087335e191f8a73ddc535805a89587867a9cf16255ef2aca8d00975b655'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '602f87bc88ae988a2cd89f856b903ff8e1b8bd58adbfc2002ec5114b85872519'
    'ru'
  end

  language 'uk' do
    sha256 '09ab818edf00d06dd52eb51178cd80c84a3d2c0b8dbcd375bde8e2cc9a511e77'
    'uk'
  end

  language 'zh-TW' do
    sha256 '40dfa404e8b6093fa8b466417dc3da9eea226aa1a16dd82f3d688e4ec3adf4cd'
    'zh-TW'
  end

  language 'zh' do
    sha256 'bcce0a37eacb811995b4d58009af181df6c7a827a65d91b26ec9572fcea70184'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: 'afceb008922b57728876b87c128ee8bd88824a851ec730fd1ad84e42e390e2cd'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
