defmodule ElixirTutorial.Router do
  use Plug.Router
  plug :match
  plug :dispatch

	get "/result" do
	  conn |> ok(to_string(ElixirTutorial.CalcServer.result))
	end
	 
	post "/add" do
	  fetch_number(conn) |> ElixirTutorial.CalcServer.add
	  conn |> ok
	end

	defp fetch_number(conn) do
	  Plug.Conn.fetch_query_params(conn).params["number"] |>
	  String.to_integer
	end
	 
	defp ok(conn, data \\ "OK") do
	  send_resp conn, 200, data
	end

end