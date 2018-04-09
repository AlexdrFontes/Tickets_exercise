class TicketsController < ApplicationController
before_action :set_event
  def new
    @ticket = Ticket.new
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.event = @event
    if @event.number_of_tickets_available - @event.tickets_sold <= 0
      render 'events/show'
    else
      if @ticket.save
         @ticket.event.increment!(:tickets_sold, by = @ticket.number_of_tickets)
        # TicketMailer.ticket_receipt(@ticket).deliver_now
        #flash[:notice] = "Your ticket to #{@event.name} was purchased.  Please look for an email with your receipt. "
        redirect_to @ticket.event
      else
        @errors = @ticket.errors.full_messages
        render 'tickets/new', locals: { ticket: @ticket }
      end
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update(ticket_params)
      redirect_to root_path, notice: "Your ticket has been update!"
    else
      render :edit, alert: "Could not update your ticket!"
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:email, :number_of_tickets)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
