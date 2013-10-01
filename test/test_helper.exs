Dynamo.under_test(Palaver.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Palaver.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
