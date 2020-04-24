class LessonController < ApplicationController
  def step1
    render plain: "Hello, #{params[:name]}"
  end
  def step2 
    render plain: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: "step4"
  end
  
  def step4
    render plain: "Move to step4"
  end

  def step5
    flash[:notice] = "Move to step6 from step5"
    redirect_to action: "step6"
  end
  
  def step6
    render plain: flash[:notice]
  end

  def step7 
    @price = (2000 * 1.10 ).floor
  end

  def step8
    @price = 1000
    render "step7"
  end

  def step9
    @comment = "<script>alert('danger')</script> Hello "
  end
  
  def step10
    @comment = "<strong> Safy html </strong> Hello "
  end

  def step11
    @population = 704414
    @surface = 141.31
  end

  def step12
    @time = Time.current
  end

  def step13
    @message = "How about you?\nLet's study Rails!"
  end

  def step16
    @items = { "フライパン" => 2680 , "ワイングラス" => 2550 , 
               "ペッパーミル" => 4515 , "ピラー" => 945 }
  end

end
