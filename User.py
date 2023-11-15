class User:
    def __init__(self, user_id, username, email, password, account_type, status):
        self.user_id = user_id
        self.username = username
        self.email = email
        self.password = password
        self.account_type = account_type
        self.status = status

    def menu(self):
        print("ACTION MENU")
        print("1 -> USER MANAGEMENT(ADD/EDIT/BLOCK Users)")
        print("2 -> DATABASE MANAGEMENT")

        selection = int(input("-> "))

        return selection

    def user_menu(self):
        print("USER MANAGEMENT")
        print("1 -> ADD User")
        print("2 -> EDIT User")
        print("3 -> BLOCK User")

        selection = int(input("-> "))

        return selection

    def database_menu(self):
        print("DATABASE MANAGEMENT")
        print("1 -> INTERACTIVE SHELL: TYPE SQL COMMANDS")
        print("2 -> SCRIPT EXECUTION: UPLOAD SQL FILE")

        selection = int(input("-> "))

        return selection

    def greet(self):
        print(f"Logged in as -> {self.username}")
        print(f"ID is -> {self.user_id}")
        print(f"Account type -> {self.account_type}")

    def __str__(self):
        return f"{self.user_id}, {self.username}, {self.email}, {self.password}, {self.account_type}, {self.status}"
