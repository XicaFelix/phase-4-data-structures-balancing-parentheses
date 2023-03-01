require_relative './stack'

# your code here

def balancing_parentheses(str)
    stack = Stack.new

    str.chars.each do |char|
        if stack.peek == '(' and char == ')'
            stack.pop
        else
            stack.push(char)
        end
    end
    return stack.size
end


