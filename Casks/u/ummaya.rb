# frozen_string_literal: true

cask "ummaya" do
  version "0.1.13"
  sha256 "1cb322d680342fd5fe8e1f7e82919b8aaa731181fb6ce41cf475f294b797e5f6"

  url "https://registry.npmjs.org/ummaya/-/ummaya-#{version}.tgz",
      verified: "registry.npmjs.org/ummaya/"
  name "UMMAYA"
  desc "Conversational multi-agent harness for Korean public-service channels"
  homepage "https://ummaya-docs.pages.dev/"

  depends_on formula: "node"
  depends_on formula: "uv"

  binary "ummaya"

  preflight do
    install_args = ["install", "--omit=dev", "--legacy-peer-deps", "--prefix", "#{staged_path}/package"]
    npm_env = {
      "PATH" => PATH.new("#{HOMEBREW_PREFIX}/bin", "#{HOMEBREW_PREFIX}/opt/node/bin", ENV.fetch("PATH")),
    }

    system_command "#{HOMEBREW_PREFIX}/bin/npm",
                   args: [*install_args, "--ignore-scripts"],
                   env:  npm_env
    system_command "#{HOMEBREW_PREFIX}/bin/npm",
                   args: [*install_args, "--no-save", "bun@1.3.14"],
                   env:  npm_env

    wrapper = staged_path/"ummaya"
    wrapper.write <<~SH
      #!/bin/bash
      export PATH="#{staged_path}/package/node_modules/.bin:#{HOMEBREW_PREFIX}/opt/uv/bin:$PATH"
      exec "#{staged_path}/package/node_modules/.bin/bun" "#{staged_path}/package/bin/ummaya" "$@"
    SH
    FileUtils.chmod 0755, wrapper
  end

  zap trash: "~/.ummaya"
end
