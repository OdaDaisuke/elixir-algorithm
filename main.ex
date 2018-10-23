import Integer

defmodule FizzBuzz do
  def run(limit) do
    print(1, limit)
  end

  defp print(n, limit) when n == limit do

    cond do
      rem(n, 15) == 0 -> :io.format "~2..0B: FizzBuzz~n", [n]
      rem(n, 5) == 0 -> :io.format "~2..0B: Fizz~n", [n]
      rem(n, 3) == 0 -> :io.format "~2..0B: Buzz~n", [n]
      true -> nil
    end

  end

  defp print(n, limit) do
    print(n, n)
    print(n + 1, limit)
  end

end

defmodule Main do
  def run() do
    [head | tail] = ["1", "aaa", "aab", "ok"]
    IO.puts(head)
    IO.puts(tail)

    map = %{foo: "aaa", aaa: "bbb"}
    k = :foo
    IO.puts(map[k])
    IO.puts(map.foo)
    allF = Enum.all?(tail, fn(s) -> String.length(s) > 1 end)
    anyF = Enum.any?(tail, fn(s) -> String.length(s) > 2 end)
    IO.puts(allF)
    IO.puts(anyF)
    Enum.each(tail, fn(s) -> IO.puts(s) end)

    key = "hello"
    %{^key => value} = %{"hello" => "world"}

    case {:ok, "hello"} do
      {:ok, "hello"} -> IO.puts("aa")
      _ -> "catch all"
    end

    case {:ok, "hello"} do
      {:ok, "hella"} -> IO.puts("aa")
      _ -> "catch all"
    end

    sum = fn(x, y) -> x + y end
    IO.puts(sum.(1,2))

    sum2 = &(&1 + &2)
    IO.puts(sum2.(3, 4))
    sArr = "Elixir rocks" |> String.split
    Enum.each(sArr, fn(s) -> IO.puts(s) end)

    re = ~r/elixir/i
    IO.puts("Elixir" =~ re)

    string = "100_000_000"
    splitedString = Regex.split(~r/_/, string)
    Enum.each(splitedString, fn(s) -> IO.puts(s) end)

    list = [1,2,3,4,5]
    for x <- list do
      IO.puts(x * x)
    end

    for n <- list, times <- 1..n do
      s = String.duplicate("*", times)
      IO.puts(s)
    end

    for x <- 1..10, is_odd(x) do
      IO.puts(x)
    end

    for x <- 1..100,
      is_even(x),
      rem(x, 3) == 0 do
      IO.puts(x)
    end

    byteSequence = <<104,101,108,108,111>>
    IO.puts(byteSequence)
    (String.length "Hello") |> IO.puts
    String.replace("Hello", "e", "a") |> IO.puts
  end
end

defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
end

defmodule ErrorHandling do
  def run do
    # raise "oh.."

    try do
      raise "oh.."
    rescue
      e in RuntimeError -> IO.puts("An error occured." <> e.message)
    end
  end
end

input = System.argv |> List.first |> String.to_integer;

FizzBuzz.run(input);

Main.run();
Length.of([1,2,3,4,5]);
# ErrorHandling.run();

# プロセスの作成。作成成功するとPIDが返る
pid = spawn(Length, :of, [1,2,3]);
