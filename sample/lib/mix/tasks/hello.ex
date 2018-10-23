defmodule Mix.Tasks.Hello do
    use Mix.Task

    @shortdoc "Custom Mix task"
    def run(_) do
        Sample.hello()
    end
end