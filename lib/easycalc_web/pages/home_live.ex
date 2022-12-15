defmodule EasycalcWeb.Pages.HomeLive do
  use Surface.LiveView

  def buttons() do
    [
      {"C", "clear"},
      {"()", "noop"},
      {"%", "percent"},
      {"/", "div"},
      {"7", "num_7"},
      {"8", "num_8"},
      {"9", "num_9"},
      {"x", "mult"},
      {"4", "num_4"},
      {"5", "num_5"},
      {"6", "num_6"},
      {"-", "minus"},
      {"1", "num_1"},
      {"2", "num_2"},
      {"3", "num_3"},
      {"+", "plus"},
      {"+/-", "invert"},
      {"0", "num_0"},
      {".", "dot"},
      {"+", "equal"}
    ]
  end
  def render(assigns) do
    ~F"""
      <div class="container mx-auto bg-gray-300 min-h-screen flex items-center justify-center">
        <div class="card w-64 bg-base-100 shadow-xl rounded-lg p-2">
          <UI.Input />
          <UI.Result />
          <UI.OptionalButtons />
          <UI.Grid cols="4" gap="2">
            {#for {label, _action} <- buttons()}
              <UI.Button label={label} />
            {/for}
          </UI.Grid>
        </div>
      </div>
    """
  end
end
