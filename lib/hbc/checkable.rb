module Hbc::Checkable
  def errors
    Array(@errors)
  end

  def warnings
    Array(@warnings)
  end

  def add_error(message)
    @errors ||= []
    @errors << message
  end

  def add_warning(message)
    @warnings ||= []
    @warnings << message
  end

  def errors?
    Array(@errors).any?
  end

  def warnings?
    Array(@warnings).any?
  end

  def result
    if errors?
      "#{Hbc::Utils::Tty.red.underline}failed#{Hbc::Utils::Tty.reset}"
    elsif warnings?
      "#{Hbc::Utils::Tty.yellow.underline}warning#{Hbc::Utils::Tty.reset}"
    else
      "#{Hbc::Utils::Tty.green}passed#{Hbc::Utils::Tty.reset}"
    end
  end

  def summary
    summary = ["#{summary_header}: #{result}"]

    errors.each do |error|
      summary << " #{Hbc::Utils::Tty.red}-#{Hbc::Utils::Tty.reset} #{error}"
    end

    warnings.each do |warning|
      summary << " #{Hbc::Utils::Tty.yellow}-#{Hbc::Utils::Tty.reset} #{warning}"
    end

    summary.join("\n")
  end
end
