defmodule Yuki.Parsers.TSV do
  @tsv_options Application.get_env(:yuki, :tsv)
  NimbleCSV.define(Default, @tsv_options)

  def parse!(tsv, opts \\ []) do
    Yuki.Parsers.CSV.parse!(tsv, Default, opts)
  end
end
