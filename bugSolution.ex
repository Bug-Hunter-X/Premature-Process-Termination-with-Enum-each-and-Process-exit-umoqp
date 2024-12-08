```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Instead of Process.exit, handle the case appropriately
    IO.puts("Skipping 3")
  else
    IO.puts(x)
  end
end)

# Or use Enum.reject to filter out the element
list = [1, 2, 3, 4, 5]
filtered_list = Enum.reject(list, fn x -> x == 3 end)
Enum.each(filtered_list, fn x -> IO.puts(x) end)

#Or use a loop for more control:
list = [1, 2, 3, 4, 5]
for x <- list do
  if x != 3 do
    IO.puts(x)
  end
end
```