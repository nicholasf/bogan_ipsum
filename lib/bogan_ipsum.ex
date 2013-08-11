defmodule BoganIpsum do

  def decode_bogan_json(filename) do
    {:ok, raw} = File.read("#{Path.absname(".")}/priv/#{filename}.json")
    decoded = JSON.decode!(raw)
  end

  def random_item(vocab) do
    String.strip Enum.at vocab, round(:random.uniform * Enum.count vocab)
  end

  def words do
    decode_bogan_json("words")
  end

  def word do
    random_item(words)
  end

  def fillers do
    decode_bogan_json("fillers")
  end

  def filler do
    random_item(fillers)
  end

  def phrases do
    decode_bogan_json("phrases")
  end

  def phrase do
    random_item(phrases)
  end

  def sentence do
    "#{phrase} #{word} #{filler} #{phrase} #{word}"
  end
end
