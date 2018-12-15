defmodule Caesar do

  def hello do
    :world
  end

  def main(argv) do
    argv
      |> parse_args
      |> process
    System.halt(0)
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [help: :boolen])
    case parse do
      {[help: true], ___________________, _} -> {:help}
      {[shift: shift], ["encrypt", msg], _} -> {:encrypt, msg, shift |> String.to_integer}
      _____________________________________  -> {:help}
    end
  end
  
  def process({:encrypt, msg, shift}) do
    Caesar.Cipher.encrypt(msg, shift)
    |> IO.puts
  end

  def process({:help}) do
    IO.puts """
    usage: ./caesar <command> <message> --shift <shift number>
    """
  end
end
