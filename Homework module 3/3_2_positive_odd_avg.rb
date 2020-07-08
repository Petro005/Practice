﻿# Написати програму, яка обчислює середнє арифметичне всіх парних додатніх чисел

# Ви маєте написати код для перевірки всіх елементів масиву на парність та додатність, 
# та додавання парних елементів до результату.

class Calculator
  def mean_odd_positive

  	# Змінна, яка отримає значення кількості чисел
  	puts "Введіть довільну кількість чисел, розділених пробілами"

    # Просимо ввести довільне число
    input = gets.chomp

    # Ділимо стрічку на масив підстрічок, за подільний символ беремо пробіл
    arr = input.split(" ")

    # Змінна для сумування всіх парних додатніх чисел
    sum_of_odd_positive = 0
    # Змінна для підрахунку кількості парних додатніх чисел
    count_of_odd_positive = 0
    # Змінна для ведення обліку актульного індексу елемента ( перший елемент має індекс № 1)
    loop_index = 1

    # Алгоритм
    # 1. Для кожного індексу перевіряємо, чи він вказує на існуючий елемент і сам індекс є не парний
    # 2. Якщо елемента масиву з вказаним індексом не існує, то виходимо з циклу
    # 3. Якщо індекс парний, то переходимо до пункту 7
    # 4. Якщо індекс не парний, то перевіряємо чи число є парним
    # 5. Якщо воно не парне, то переходимо до пункту 7
    # 6. Якщо воно парне, то додаємо його до суми всіх додатніх чисел (sum_of_odd_positive) та збільшуємо лічильник їх кількості (count_of_odd_positive)
    # 7. Збільшуємо індекс на 1
    # 8. Переходимо по пункту 1
    for i in 0...arr.size
      if (i%2!=0)
        tmp=arr[i].to_i
        if (tmp%2==0)
          sum_of_odd_positive+=tmp
          count_of_odd_positive+=1

        end
      end
    end
    # Даний код записує у змінну result середнє визначених парних додатніх чисел
    result = sum_of_odd_positive / count_of_odd_positive if count_of_odd_positive > 0
    
    puts result

  end
end
obj = Calculator.new
obj.mean_odd_positive