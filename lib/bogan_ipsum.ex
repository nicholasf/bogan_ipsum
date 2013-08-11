defmodule BoganIpsum do
  def words do
    {:ok, words}  = JSON.decode!(File.read("#{Path.absname(".")}/priv/words.json"))
    words
  end

  def word do
    words[round(:random.uniform * Enum.count fillers)]
  end

  def fillers do
    {:ok, fillers }   = JSON.decode!(File.read("#{Path.absname(".")}/priv/fillers.json"))
    fillers
  end

  def filler do
    words[round(:random.uniform * Enum.count fillers)]
  end

  def phrases do
    {:ok, phrases }   = JSON.decode!(File.read("#{Path.absname(".")}/priv/phrases.json"))
    phrases
  end

  def phrase do
    words[round(:random.uniform * Enum.count fillers)]
  end

  def sentence do
    "#{phrase} #{word} #{filler} #{phrase} #{word}"
  end
end
