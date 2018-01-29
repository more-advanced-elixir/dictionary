defmodule Dictionary.Application do

  use Application

  def start(_type, _args) do

    remember_we_are_the_server()

    children = [
      Dictionary.WordList,
    ]

    options = [
      name:     Dictionary.Supervisor,
      strategy: :one_for_one,
    ]

    Supervisor.start_link(children, options)
  end

  def are_we_the_server?() do
    Application.get_env(:hangman, :we_are_the_server) == "oh yes"
  end

  defp remember_we_are_the_server() do
    :ok = Application.put_env(:hangman, :we_are_the_server, "oh yes")
  end
end
