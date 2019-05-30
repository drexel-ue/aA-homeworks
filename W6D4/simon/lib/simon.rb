class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length, @game_over, @seq = 1, false, []
  end

  def play
    until @game_over
      take_turn
      system("clear")
    end

    game_over_message
    reset_game
  end

  def take_turn

  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence

  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    'Okay, can can you handel this ... ???'
  end

  def game_over_message
    'Aye it happens'
  end

  def reset_game
    @sequence_length, @game_over, @seq = 1, false, []
  end
end
