defmodule Inmana.WelcomerTest do
  use ExUnit.Case, async: true

  alias Inmana.Welcomer

  describe "welcomer/1" do
    test "When the user is special, returns a special message." do
      # Setup
      params = %{"name" => "banana", "age" => "42"}
      expected_result = {:ok, "You are very special Sr. Banana."}

      # Execution
      result = Welcomer.welcome(params)

      # Check
      assert result == expected_result
    end

    test "When the user is not special and is more that 18 yers old, returns the Welcome." do
      # Setup
      params = %{"name" => "Jacquin", "age" => "56"}
      expected_result = {:ok, "Welcome jacquin."}

      # Execution
      result = Welcomer.welcome(params)

      # Check
      assert result == expected_result
    end

    test "When the user is not special and is under age, returns You shall not pass." do
      # Setup
      params = %{"name" => "Maggie", "age" => "5"}
      expected_result = {:error, "You shall not pass maggie."}

      # Execution
      result = Welcomer.welcome(params)

      # Check
      assert result == expected_result
    end
  end
end
