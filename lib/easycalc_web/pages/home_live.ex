defmodule EasycalcWeb.Pages.HomeLive do
  use Surface.LiveView

  alias Easycalc.{Buttons, Logic}

  data result, :number, default: 0
  data queue, :list, default: []

  def render(assigns) do
    ~F"""
      <UI.MainContainer>
        <UI.Calculator>
          <UI.Input input={@queue} />
          <UI.Result result={@result} />
          <UI.Functions />
          <UI.Grid cols="4" gap="2">
            {#for { label, action } <- Buttons.all()}
              <UI.Button label={label} operation={action}/>
            {/for}
          </UI.Grid>
        </UI.Calculator>
      </UI.MainContainer>
    """
  end

  def handle_event(op, _, socket) do
    assigns = socket.assigns
    queue = assigns.queue
    state = {queue, 0}
    { queue, result } = Logic.new_operation(state, op)
    socket = assign(socket, queue: queue, result: result)
    { :noreply, socket }
  end
end
