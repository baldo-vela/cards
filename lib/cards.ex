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
    ["Ace", "Two", "Three"]
  end

  def shuffle do
    # <[ String ]> -> shuffle -> <[ String ]>
  end

  def save do
    # <[ String ]> -> save -> < String > (path to saved file)
  end

  def load do
    # < String > (path to saved file) -> load -> <[ String ]>
  end
end