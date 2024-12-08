# Elixir Bug: Premature Process Termination with Enum.each and Process.exit

This repository demonstrates an uncommon Elixir bug related to the use of `Enum.each` and `Process.exit`. The bug arises from the unexpected termination of the process due to `Process.exit` called within the `Enum.each` function.  This results in the enumeration being stopped before completion and can lead to unexpected behavior in the application.

**Problem:** Using `Process.exit` within `Enum.each` terminates the entire process rather than just the current iteration of the enumeration. This is counter-intuitive and may lead to debugging challenges.

**Solution:** This bug is resolved by using alternative Elixir constructs such as `Enum.map`, `Enum.reduce`, or a loop which provides more appropriate flow control and avoids unintended process termination.  A cleaner implementation avoids the use of `Process.exit` altogether.