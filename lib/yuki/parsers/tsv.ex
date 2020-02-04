defmodule Yuki.Parsers.TSV do
  NimbleCSV.define(Default, separator: "\t", escape: "\"")

  def parse!(tsv, opts \\ []) do
    Yuki.Parsers.CSV.parse!(tsv, Default, opts)
  end
end
