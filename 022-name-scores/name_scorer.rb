class NameScorer
  def name_score(name, position)
    position  * alphabetical_value(name)
  end

  def alphabetical_value(name)
    # sum provides sum of ascii values of characters in name
    # 97 is ascii for a, need to subtract 96 for each letter to get alphabetical value
    name.downcase.sum - (96 * name.length)
  end
end
