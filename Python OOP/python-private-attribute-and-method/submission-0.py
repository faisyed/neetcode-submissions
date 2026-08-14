class PasswordManager:
    def __init__(self, password):
          self.__pass = password
    
    def verify_password(self, password):
        return self.__pass == password

# Don't modify the code below this line
my_password = PasswordManager("secret123")
print(my_password.verify_password("secret123"))  # Should print: True
print(my_password.verify_password("wrong"))      # Should print: False
