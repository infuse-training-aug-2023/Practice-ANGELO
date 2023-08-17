class Calculator:
    def add(self, num1, num2):
        return num1 + num2
    
    def subtract(self, num1, num2):
        return num1 - num2
    
    def multiply(self, num1, num2):
        return num1 * num2

calculator = Calculator()

result = calculator.add(1,2)
print(result)

result = calculator.subtract(1,2)
print(result)

result = calculator.multiply(1,2)
print(result)