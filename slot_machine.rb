class SlotMachine
  # create hash holding values
  HASH = {
    joker: 50,
    star: 40,
    bell: 30,
    seven: 20,
    cherry: 10
  }
  def score(reels)
    if reels.uniq.length == 3
      return 0
    elsif reels.uniq.length == 1
     return HASH[reels[0].to_sym]
    elsif reels.count("joker") >= 1
      return HASH[reels.sort[1].to_sym] / 2

      # array = reels.dup
      # array.uniq.delete("joker")
      # a = reels.first.to_sym
      # (reels.count("joker") / 2 * 50) / 2 + (1 - reels.count("joker") / 2 ) * ( HASH[a] / 2 )
    end
  end
end
# ["a", "a", "b"]
# ["a", "b", "b"]
# ["b", "c", "c"].sort[1]
