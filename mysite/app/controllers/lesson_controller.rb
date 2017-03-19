class LessonController < ApplicationController
  before_action :aiueo, only: :step4

  def step1
    render text: "こんにちは、#{params[:name]}さん"
  end
  def step2
    render text: params[:controller] + "#" + params[:action]
  end
  def step3
    redirect_to action: "step4"
  end

  def step4
    render text: "step4に移動しました。<br />"+@message
  end

  def step8
    @price = (2000 * 1.08).floor
  end

  def step9
    @price = 1000
    render "step8"
  end
  def step10
    @time = Time.now
  end
  def step11
    @message = "あいうえお\nかきくけこ"
  end
  def step12
  end
  def step13
  end
  def step14
    @zaiko = 0
  end
  def step15
    @items = {
      "フライパン"  =>1500,
      "ワイングラス"=>3400,
      "ペッパーミル"=>4515,
      "ピーラー"    =>5600
    }

  end
  private
  def aiueo
    @message = "こんにちは"
  end
end
