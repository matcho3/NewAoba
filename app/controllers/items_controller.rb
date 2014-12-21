class ItemsController < ApplicationController
	def mail_send
    @mail = NoticeMailer.sendmail_confirm.deliver
    render :text => 'send finish'
    # raise 'hi'
  end
end
