def add(num1, num2)
    return(num1 + num2);
end

def subtract(num1, num2);
    return(num1 - num2);
end

def sum(set)
    sum = 0.0;
    set.each do |x|
        sum += x;
    end
    return sum;
end

def multiply(num1, num2)
    return(num1 * num2);
end

def power(num1, num2)
    return(num1 ** num2);
end

def factorial(num)
    if num == 0;
        return 1;
    else
        num * factorial(num - 1);
    end
end
