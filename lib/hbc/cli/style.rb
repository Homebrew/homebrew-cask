class Hbc::CLI::Style < Hbc::CLI::Base
  def self.help
    'checks Cask style using RuboCop'
  end

  def self.run(*args)
    retval = new(args).run
    raise Hbc::CaskError.new("style check failed") unless retval
  end

  attr_reader :args
  def initialize(args)
    @args = args
  end

  def run
    install_rubocop
    system 'rubocop', *rubocop_args, '--', *cask_paths
    $?.success?
  end

  RUBOCOP_CASK_VERSION = '~> 0.5.0'

  def install_rubocop
    Hbc::Utils.install_gem_setup_path! 'rubocop-cask', RUBOCOP_CASK_VERSION, 'rubocop'
  end

  def cask_paths
    @cask_paths ||= if cask_tokens.empty?
      Hbc.all_tapped_cask_dirs
    elsif cask_tokens.any? { |file| File.exist?(file) }
      cask_tokens
    else
      cask_tokens.map { |token| Hbc.path(token) }
    end
  end

  def cask_tokens
    @cask_tokens ||= self.class.cask_tokens_from(args)
  end

  def rubocop_args
    fix? ? autocorrect_args : default_args
  end

  def default_args
    ['--format', 'simple', '--force-exclusion', '--config', rubocop_config]
  end

  def autocorrect_args
    default_args + ['--auto-correct']
  end

  def rubocop_config
    "#{Hbc.default_tappath}/Casks/.rubocop.yml"
  end

  def fix?
    args.any? { |arg| arg =~ /--(fix|(auto-?)?correct)/ }
  end
end
