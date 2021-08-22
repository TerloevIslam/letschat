# frozen_string_literal: true

class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    mine = ApplicationController.render(
      partial: 'messages/mine',
      locals: { message: message }
    )

    foreign = ApplicationController.render(
      partial: 'messages/foreign',
      locals: { message: message }
    )

    ActionCable.server.broadcast "room_channel_#{message.room_id}", mine: mine, foreign: foreign, message: message
  end
end
