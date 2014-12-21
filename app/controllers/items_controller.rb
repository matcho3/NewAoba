class ItemsController < ApplicationController
	def mail_send
    @mail = NoticeMailer.sendmail_confirm.deliver
    # render :text => '送信完了しました。'
    # raise 'hi'
  end
end
