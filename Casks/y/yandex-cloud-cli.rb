cask "yandex-cloud-cli" do
  version "0.125.0"
  sha256 :no_check

  url "https://storage.yandexcloud.net/yandexcloud-yc/install.sh",
      verified: "yandexcloud.net/yandexcloud-yc/"
  name "Yandex Cloud CLI"
  desc "CLI for Yandex Cloud"
  homepage "https://cloud.yandex.com/docs/cli/"

  # This can return a page with a CAPTCHA instead of the expected content
  # (e.g. when the check is run in the homebrew/cask CI environment).
  livecheck do
    url "https://cloud.yandex.com/en/docs/cli/release-notes"
    regex(/Version\s+(\d+(?:\.\d+)+)\s+\(/i)
  end

  installer script: {
    executable: "install.sh",
    args:       ["-i", "#{staged_path}/#{token}", "-r", "/dev/null"],
  }
  installer script: {
    executable: "yandex-cloud-cli/bin/yc",
    args:       ["components", "post-update"],
  }
  binary "yandex-cloud-cli/bin/docker-credential-yc"
  binary "yandex-cloud-cli/bin/yc"
  binary "yandex-cloud-cli/completion.zsh.inc",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_yc"
  binary "yandex-cloud-cli/completion.bash.inc",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/yc"

  uninstall delete: "#{staged_path}/#{token}"

  zap trash: "~/.config/yandex-cloud"

  caveats <<~EOS
    To install shell completions add this to your profile:

      for bash users
        source "#{staged_path}/#{token}/completion.bash.inc"

      for zsh users
        source "#{staged_path}/#{token}/completion.zsh.inc"
  EOS
end
