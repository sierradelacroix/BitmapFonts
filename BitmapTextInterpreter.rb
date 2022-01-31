class BitmapTextInterpreter

  class Instruction
    def type
      warn "WARNING: If you extend Instruction, please override type."
    end

  end

  class DrawGlyph < Instruction
    attr_reader :x, :y, :glyph

    def type
      :drawglyph
    end

    def initialize(x:, y:, glyph:)
      @x = x
      @y = y
      @glyph = glyph
    end
  end

  class Pause < Instruction
    attr_reader :wait

    def type
      :pause
    end

    def initialize(wait:)
      @wait = wait
    end
  end

  class LineBreak < Instruction
    def type
      :linebreak
    end
  end

  def self.process_string(string)

  end

  def process_ligatures

  end

end