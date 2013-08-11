defmodule BoganIpsum do

  def decode_bogan(filename) do
    {:ok, raw} = File.read("#{Path.absname(".")}/priv/#{filename}.json")
    decoded = JSON.decode!(raw)
  end

  def random_item(vocab) do
    String.strip Enum.at vocab, round(:random.uniform * ((Enum.count vocab) -1))
  end

  def words do
    decode_bogan("words")
  end

  def word do
    String.downcase random_item(words)
  end

  def fillers do
    decode_bogan("fillers")
  end

  def filler do
    String.downcase random_item(fillers)
  end

  def phrases do
    decode_bogan("phrases")
  end

  def phrase(:titleize) do
    random_item(phrases)
  end

  def phrase do
    String.downcase random_item(phrases)
  end

  def sentences(number, group) do
    if number == 0 do
      Enum.join group, " "
    else
      sentences(number - 1, group ++ ["#{phrase(:titleize)} #{word} #{filler} #{phrase} #{word}."])
    end
  end

  def sentences(number) do
    sentences(number, [])
  end

  def sentence do
    sentences(1)
  end
end
