def janken #じゃんけんメソッド定義
  
  loop do
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

  @my_hand = gets.to_i
  @cp_hand = rand(3)  #3未満

  if @my_hand == 3
    puts "また遊んでね"
    return 
   elsif @my_hand < 0 || @my_hand > 2 
    puts "0~2の数字を選んでください"
   else
     break
  end
  end
 
  puts "ホイ!"
  janken = ["グー", "チョキ", "パー"]

  puts "あなた：#{janken[@my_hand]}を出しました"
  puts "相手: #{janken[@cp_hand]}を出しました"
  
  if @my_hand == @cp_hand
     puts "あいこで~"
    return :draw
    
  elsif (@my_hand == 0 && @cp_hand == 1) || (@my_hand == 1 && @cp_hand == 2) || (@my_hand == 2 && @cp_hand == 0)
    puts "じゃんけんに勝ちました。向きを選んでください"
    puts "-----------------------------"
    return :win
  else
    puts "じゃんけんに負けました。向きを選んでください"
    puts "-----------------------------"
    return :lose
  end
end



def acchi  #あっち向いてホイ
  
  janken_result = janken
  
  if (janken_result == :win) || (janken_result == :lose)
    
  loop do
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右)"
  
  @my_neck = gets.to_i
  @cp_neck = rand(4)
  
  if @my_neck < 0 || @my_neck > 3
    puts "0~3を選んでください"
  else
  direction = ["上","下","左","右"]
  
  
  puts "あなた:#{direction[@my_neck]}を選びました"
  puts "相手:#{direction[@cp_neck]}を選びました"
 if (@my_neck == @cp_neck) && (janken_result == :win)
   return :win
 elsif (@my_neck == @cp_neck) && (janken_result == :lose)
   return :lose
else 
  puts "じゃんけんに戻ります"
  return :draw
    end
   end
  end
 end
end
result = nil

loop do
  result = acchi

  case result
  when :win
    puts "あなたの勝ちです！"
    break
  when :lose
    puts "cpの勝ちです。"
    break
  end
end