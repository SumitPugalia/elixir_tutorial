defmodule ElixirTutorial.Application do
  use Application

  def start(_type, _args) do
    children = [
    	Plug.Adapters.Cowboy.child_spec(
  			:http, ElixirTutorial.Router, [], [port: Application.fetch_env!(:elixir_tutorial, :port)]
			),
    	{ElixirTutorial.CalcServer, 0}
    ]

    opts = [strategy: :one_for_one, name: ElixirTutorial.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
