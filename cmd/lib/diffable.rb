class Diffable
  def initialize(&block)
    @before = nil
    @after = nil
    @gather = block
  end

  def gather
    @gather.call.sort.uniq
  end

  def before
    @before ||= gather
  end

  def after
    @after ||= gather
  end

  def diff
    removed = before.reject { |e| after.include?(e) }
    added = after - before

    [removed, added]
  end

  def changed?
    removed, added = diff
    removed.any? || added.any?
  end

  def combined
    (before + after).sort.uniq
  end

  def diff_lines(skip_unchanged: true)
    removed, added = diff

    lines = combined.flat_map do |e|
      if removed.include?(e)
        "#{Tty.red}- #{e}#{Tty.reset}"
      elsif added.include?(e)
        "#{Tty.green}+ #{e}#{Tty.reset}"
      else
        skip_unchanged ? [] : "  #{e}"
      end
    end

    lines
  end
end
