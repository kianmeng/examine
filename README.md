# Examine

Examine enhances inspection debugging by displaying results alongside code and execution times. When used with pipelines, it can show the results and execution time for each step, along with the overall execution time and the pipeline code.

Documentation can be found at [https://hexdocs.pm/examine](https://hexdocs.pm/examine).

## Installation

Add `:examine` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:examine, "~> 0.1.0"}
  ]
end
```

## Examples

### Simple Usage
```elixir
Examine.inspect(1 + 2)
```
![Example 5 Screenshot](examples/images/example_5.png)

### Pipeline and Vars
```elixir
list = [1, 2, 3]

list
|> Enum.map(&{&1, to_string(&1 * &1)})
|> Enum.into(%{})
|> Dbg.inspect(show_vars: true)
```
![Example 1 Screenshot](examples/images/example_1.png)

### Inspecting a Pipeline
```elixir
list = [1, 2, 3]

    list
    |> Enum.map(&{&1, to_string(&1 * &1)})
    |> Enum.into(%{})
    |> Examine.inspect(inspect_pipeline: true, show_vars: true)
```
![Example 2 Screenshot](examples/images/example_2.png)

### Inspecting a Pipeline with Anonymous Function
```elixir
list = [1, 2, 3]

    list
    |> Enum.map(&{&1, to_string(&1 * &1)})
    |> (fn val ->
          :timer.sleep(1000)
          val
        end).()
    |> Enum.into(%{})
    |> Examine.inspect(inspect_pipeline: true)
```
![Example 3 Screenshot](examples/images/example_3.png)
