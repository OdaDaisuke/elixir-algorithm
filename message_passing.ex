defmodule MessagePassing do
    def listen do
        receive do
            {:ok, "hello"} -> IO.puts("OKOK!")
        end

        listen # 再起にしないと初回にメッセージを受け取ったら終了してしまう。
    end
end

pid = spawn(MessagePassing, :listen, []);
send pid, {:ok, "hello"};