defmodule ExJenga.Util do
  @moduledoc false

  @doc false
  @spec get_url(String.t(), String.t()) :: String.t()
  def get_url(live_url, sandbox_url) do
    if Application.get_env(:ex_jenga, :sandbox) == false, do: live_url, else: sandbox_url
  end

  def generate_timestamp do
    today = NaiveDateTime.add(NaiveDateTime.utc_now(), 3600 * 3)

    timestamp =
      [today.year, today.month, today.day, today.hour, today.minute, today.second]
      |> Enum.map(&to_string/1)
      |> Enum.map(&String.pad_leading(&1, 2, "0"))
      |> Enum.join("")

    {:ok, timestamp}
  end
end
