defmodule Yuki.Parsers.TSV do
  @separator Application.get_env(:yuki, :tsv)[:separator]
  @escape Application.get_env(:yuki, :tsv)[:escape]

  NimbleCSV.define(Default, separator: @separator, escape: @escape)

  def parse!(tsv, opts \\ []) do
    Yuki.Parsers.CSV.parse!(tsv, Default, opts)
  end
end
