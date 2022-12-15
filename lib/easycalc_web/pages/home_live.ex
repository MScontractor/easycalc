defmodule EasycalcWeb.Pages.HomeLive do
  use Surface.LiveView

  alias Easycalc.Buttons

  data result, :number, default: 420
  data queue, :list, default: ["num_1", "plus", "num_2"]

  def render(assigns) do
    ~F"""
      <UI.MainContainer>
        <UI.Calculator>
          <UI.Input input={@queue} />
          <UI.Result result={@result} />
          <UI.Functions />
          <UI.Grid cols="4" gap="2">
            {#for {label, action} <- Buttons.all()}
              <UI.Button label={label} operation={action}/>
            {/for}
          </UI.Grid>
        </UI.Calculator>
      </UI.MainContainer>
    """
  end
end
