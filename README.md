# ElixirTutorial

* Create Elixir Application with an empty supervisor
```mix new elixir_tutorial -- sup```

* Ways to add dependencies
	* from hex.pm ```{:dependency_name, "~> 0.0.1"}```
	* from git ```{:elixir_tutorial, git: "https://github.com/Sumitforyou/elixir_tutorial.git", branch: "master"}```
			   		 ```{:gettext, github: "Sumitforyou/elixir_tutorial"}```
	* from local_path ```{:local_dependency, path: "path/to/local_dependency"}```

* To download and compile all dependencies, run:
```mix deps.get```

* To learn more about dependencies, run the following command:
```mix help deps```

* Start Application
	Without shell ```mix run```
	With shell ```iex -S mix```

* Application Environment
	add in config.exs ```config :elixir_tutorial, test: :value_test```
	fetch using ```Application.fetch_env(:elixir_tutorial, :test)```

* Example: Creating a Web-Based CalcServer
	Start server ```iex -S mix```
	Request using curl ```curl http://localhost:8088/result```
		```curl http://localhost:8088/add?number=1 -X POST```
