defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    # <[ String ]> -> shuffle -> <[ String ]>
    IO.puts "Everyday I'm Shuffling!"
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)

  end

  def save(deck, filename) do
    # <[ String ]> -> save -> < String > ('path to saved file')
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    # < String > ('path to saved file') -> load -> <[ String ]>
    case File.read(filename) do
      {:ok, binary} ->
        :erlang.binary_to_term binary
      {:error, _reason} ->
        "That file does not exist"
    end


  end
end
